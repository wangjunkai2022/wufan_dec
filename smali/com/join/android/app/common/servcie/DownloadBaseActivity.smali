.class public Lcom/join/android/app/common/servcie/DownloadBaseActivity;
.super Lcom/join/mgps/activity/MyFragmentActivity1;
.source "DownloadBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadBaseActivity"

.field private static context:Landroid/content/Context;

.field static future:Ljava/util/concurrent/ScheduledFuture;

.field private static mHandler:Landroid/os/Handler;

.field private static recovery:Z

.field private static scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field activityHasdestroy:Z

.field private apkInstalDownDataOrObbRecverReceiver_:Landroid/content/BroadcastReceiver;

.field private apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

.field private delay:I

.field private downloadbygameRecverReceiver_:Landroid/content/BroadcastReceiver;

.field handlerdelay:Landroid/os/Handler;

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private intentFilter2_:Landroid/content/IntentFilter;

.field private intentFilter3_:Landroid/content/IntentFilter;

.field private intentFilter4_:Landroid/content/IntentFilter;

.field isWifi:Z

.field private lastDelay:J

.field lastRemovedDownloadTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field mScreenPowerStatus:Z

.field mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;

.field private onConnectivityChangedReceiver_:Landroid/content/BroadcastReceiver;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;

.field receiver:Lcom/join/mgps/receiver/BootReceiver_;

.field recommendClient:Lcom/join/mgps/rpc/d;

.field screenOffTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$b;

    invoke-direct {v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$b;-><init>()V

    sput-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;-><init>()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter1_:Landroid/content/IntentFilter;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter2_:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter3_:Landroid/content/IntentFilter;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenPowerStatus:Z

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->screenOffTime:J

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    .line 10
    new-instance v2, Lcom/join/android/app/common/servcie/DownloadBaseActivity$i;

    invoke-direct {v2, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$i;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    iput-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->handlerdelay:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isWifi:Z

    .line 12
    iput-boolean v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->activityHasdestroy:Z

    const/16 v2, 0x3e8

    .line 13
    iput v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->delay:I

    .line 14
    iput-wide v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastDelay:J

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->restartOnlyWifiDownloadTask()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->restartDownloadTask()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->restartAllNetDownloadTask()V

    return-void
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static declared-synchronized download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 1

    const-class v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->downloadStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized downloadStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 3

    const-class v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method downloadStart called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/join/android/app/common/servcie/b;->a(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v1

    sget-object v2, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p0, p1}, Lcom/join/android/app/common/servcie/a;->m(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initRecviver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Lcom/join/android/app/common/servcie/DownloadBaseActivity$b;)V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->receiver:Lcom/join/mgps/receiver/BootReceiver_;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/join/mgps/receiver/BootReceiver_;

    invoke-direct {v0}, Lcom/join/mgps/receiver/BootReceiver_;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->receiver:Lcom/join/mgps/receiver/BootReceiver_;

    .line 9
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 17
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->receiver:Lcom/join/mgps/receiver/BootReceiver_;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter1_:Landroid/content/IntentFilter;

    const-string v1, "com.join.apkinstalldataobb.action.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter2_:Landroid/content/IntentFilter;

    const-string v1, "com.join.apkinstal.action.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter3_:Landroid/content/IntentFilter;

    const-string v1, "com.join.downloadbygameid.action.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 26
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$c;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$c;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 27
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter2_:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->downloadbygameRecverReceiver_:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 29
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$d;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->downloadbygameRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 30
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter3_:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onConnectivityChangedReceiver_:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    .line 32
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$e;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$e;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onConnectivityChangedReceiver_:Landroid/content/BroadcastReceiver;

    .line 33
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    :cond_4
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalDownDataOrObbRecverReceiver_:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_5

    .line 35
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$f;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$f;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalDownDataOrObbRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 36
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter1_:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5
    return-void
.end method

.method private isAppOnForeground()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 5
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private static declared-synchronized restartAllNetDownloadTask()V
    .locals 7

    const-class v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_1
    sput-boolean v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->a0()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    sget-object v4, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/join/mgps/Util/UtilsMy;->h0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    .line 7
    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    .line 8
    sget-object v4, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v4}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values_express()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    goto :goto_1

    :cond_2
    const/16 v4, 0x12c

    .line 10
    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 11
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_3

    .line 14
    invoke-virtual {v4, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMobleNetNeedStop(I)V

    .line 15
    :cond_3
    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 17
    invoke-static {v3, v2}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v3

    .line 18
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 19
    :cond_4
    sput-boolean v2, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    monitor-exit v0

    return-void

    .line 21
    :cond_5
    :goto_2
    :try_start_5
    sput-boolean v2, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private declared-synchronized restartDownloadTask()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->activityHasdestroy:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isOnlyWifiReconnect()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/d;->j(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->b0()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/join/mgps/Util/UtilsMy;->h0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v3

    .line 7
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    .line 8
    sget-object v3, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values_express()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x12c

    .line 10
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 11
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    .line 12
    sget-object v8, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    if-eqz v8, :cond_7

    .line 13
    invoke-static {v8}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 14
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-eq v8, v4, :cond_3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-eq v4, v6, :cond_3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-eq v4, v3, :cond_3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 15
    :cond_3
    invoke-virtual {v2, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 17
    invoke-static {v2, v7}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v2, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 20
    invoke-static {v2}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-eq v8, v4, :cond_6

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-eq v4, v6, :cond_6

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-eq v4, v3, :cond_6

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 22
    :cond_6
    invoke-virtual {v2, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 23
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 24
    invoke-static {v2, v7}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 25
    :cond_7
    :goto_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_c

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_8

    goto :goto_4

    .line 26
    :cond_8
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_1

    .line 27
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    .line 28
    :cond_9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lg1/f;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 29
    :cond_a
    :goto_3
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 30
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 31
    :cond_b
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Lcom/join/android/app/common/utils/APKUtils;->v(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32
    :cond_c
    :goto_4
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 33
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v3

    sget-object v4, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v5}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    goto/16 :goto_0

    .line 34
    :cond_d
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v3

    sget-object v4, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v7}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 35
    :catch_1
    :cond_e
    monitor-exit p0

    return-void
.end method

.method private static declared-synchronized restartOnlyWifiDownloadTask()V
    .locals 7

    const-class v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    sput-boolean v2, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 5
    :try_start_2
    sput-boolean v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z

    .line 6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->a0()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    sget-object v4, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/join/mgps/Util/UtilsMy;->h0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    .line 10
    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    .line 11
    sget-object v4, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v4}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values_express()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    goto :goto_1

    :cond_3
    const/16 v4, 0x12c

    .line 13
    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 14
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_4

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_4

    .line 17
    invoke-virtual {v4, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMobleNetNeedStop(I)V

    .line 18
    :cond_4
    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 20
    invoke-static {v3, v2}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v3

    .line 21
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 22
    :cond_5
    sput-boolean v2, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 23
    monitor-exit v0

    return-void

    .line 24
    :cond_6
    :goto_2
    :try_start_6
    sput-boolean v2, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private declared-synchronized retryOnSomeTime()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduler status:: isDone ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";furture.isCancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/join/android/app/common/servcie/DownloadBaseActivity$a;

    invoke-direct {v2, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$a;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    const-wide/16 v3, 0x5

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendPointVolcanno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    const-string v0, "-"

    move-object/from16 v1, p1

    .line 1
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, ""

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v2, "999"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    new-array v2, v4, [Ljava/lang/String;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 7
    array-length v2, v1

    const-string v3, "\u6a21\u5757"

    const-string v6, "\u6700\u65b0\u7f51\u6e38"

    const-string v7, "\u5927\u5bb6\u90fd\u5728\u73a9"

    const-string v8, "home"

    const-string v9, "0"

    const-string v10, "\u7f51\u6e38\u63a8\u8350"

    if-lez v2, :cond_10

    .line 8
    array-length v2, v1

    const-string v12, "4"

    const/4 v13, 0x2

    if-le v2, v13, :cond_3

    aget-object v2, v1, v4

    const-string v14, "22"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    aget-object v2, v1, v5

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v7

    goto :goto_1

    .line 10
    :cond_1
    aget-object v2, v1, v5

    const-string v3, "13"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v6

    .line 11
    :cond_2
    :goto_1
    aget-object v1, v1, v13

    :goto_2
    move-object v9, v0

    move-object v10, v1

    goto/16 :goto_6

    .line 12
    :cond_3
    aget-object v2, v1, v4

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    aget-object v2, v1, v4

    const-string v14, "ranking"

    invoke-static {v2, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_5

    .line 13
    :cond_4
    aget-object v2, v1, v4

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    array-length v0, v1

    if-le v0, v5, :cond_5

    aget-object v0, v1, v5

    move-object v10, v0

    goto :goto_3

    :cond_5
    move-object v10, v9

    :goto_3
    move-object v9, v7

    goto/16 :goto_6

    .line 15
    :cond_6
    aget-object v2, v1, v4

    const-string v7, "7"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16
    array-length v0, v1

    if-le v0, v5, :cond_7

    aget-object v0, v1, v5

    move-object v9, v10

    move-object v10, v0

    goto/16 :goto_6

    :cond_7
    move-object v15, v10

    move-object v10, v9

    move-object v9, v15

    goto :goto_6

    .line 17
    :cond_8
    aget-object v2, v1, v4

    const-string v7, "5"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 18
    array-length v0, v1

    if-le v0, v5, :cond_9

    aget-object v0, v1, v5

    move-object v10, v0

    goto :goto_4

    :cond_9
    move-object v10, v9

    :goto_4
    move-object v9, v6

    goto :goto_6

    .line 19
    :cond_a
    aget-object v2, v1, v4

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 20
    array-length v0, v1

    if-le v0, v13, :cond_b

    .line 21
    aget-object v9, v1, v13

    .line 22
    :cond_b
    array-length v0, v1

    const/4 v2, 0x3

    if-le v0, v2, :cond_c

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    aget-object v1, v1, v2

    goto :goto_2

    :cond_c
    move-object v10, v9

    move-object v9, v3

    goto :goto_6

    .line 25
    :cond_d
    :goto_5
    aget-object v2, v1, v4

    .line 26
    array-length v3, v1

    if-le v3, v5, :cond_e

    .line 27
    aget-object v0, v1, v5

    .line 28
    :cond_e
    array-length v3, v1

    if-le v3, v13, :cond_f

    .line 29
    aget-object v1, v1, v13

    move-object v9, v0

    move-object v10, v1

    move-object v8, v2

    goto :goto_6

    :cond_f
    move-object v8, v2

    :cond_10
    move-object v10, v9

    move-object v9, v0

    .line 30
    :goto_6
    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "volcannoEvent"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    invoke-direct {v0}, Lcom/psk/eventmodule/StatFactory$VolcanoOther;-><init>()V

    .line 33
    invoke-static/range {p3 .. p3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 34
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-object/from16 v2, p3

    invoke-virtual {v0, v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    :cond_11
    move-object v5, v0

    .line 35
    sget-object v0, Lcom/psk/eventmodule/StatFactory;->Companion:Lcom/psk/eventmodule/StatFactory$Companion;

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/psk/eventmodule/StatFactory$Companion;->getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/StatFactory;

    move-result-object v0

    new-instance v12, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;

    sget-object v2, Lcom/psk/eventmodule/Event;->conversion:Lcom/psk/eventmodule/Event;

    new-instance v4, Lcom/psk/eventmodule/StatFactory$SpmData;

    const-string v7, "wufun"

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/psk/eventmodule/StatFactory$SpmData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v12

    move-object/from16 v3, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;-><init>(Lcom/psk/eventmodule/Event;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$SpmData;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    invoke-virtual {v0, v12}, Lcom/psk/eventmodule/StatFactory;->sendEvent(Lcom/psk/eventmodule/StatFactory$VolcanoEvent;)V

    :cond_12
    return-void
.end method

.method public static updatezipProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/l;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method apkInstalDownDataOrObbRecver(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "apkpath"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/utils/APKUtils;->y(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method apkInstalRecver(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "packageName"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "actionFrom"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method apkInstalRecver() called.packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  actionFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->changeDownloadState(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "xyz.aethersx2.android"

    if-eqz v1, :cond_2

    .line 7
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->changeDownloadState(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x3

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->changeDownloadState(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "com.join.android.app.mgsim.wufun.addon"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->t(Landroid/content/Context;)V

    .line 14
    :cond_4
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p0, v2, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->changeDownloadState(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "android.intent.action.INSTALL_FAILURE"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    return-void
.end method

.method backH5Downloadgame(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDataBackRequest([Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/c;->H0(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity$h;

    invoke-direct {v1, p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$h;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method changeDownloadState(ILjava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->backH5Downloadgame(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V

    .line 6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->d()Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v3, :cond_2

    :cond_3
    const-string v3, "downloadTask status="

    const/4 v4, 0x5

    if-eq p1, v0, :cond_8

    const/4 v5, 0x2

    if-eq p1, v5, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    :try_start_1
    sget-object v5, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "app\u5378\u8f7d"

    .line 12
    invoke-static {v5}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  5\u662ffinish\u72b6\u6001"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    const/16 v3, 0xb

    .line 14
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v3, v5, :cond_5

    const-string v3, "downloadTask \u5b89\u88c5\u72b6\u6001"

    .line 15
    invoke-static {v3}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 17
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v3

    new-instance v5, Lcom/join/mgps/event/l;

    invoke-direct {v5, v2, v4}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v3, v5}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_1

    :cond_5
    const-string v3, "\u6536\u5230\u5220\u9664\u5e7f\u64ad"

    .line 21
    invoke-static {v3}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 24
    iget-object v4, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v3, :cond_7

    .line 25
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    :cond_7
    invoke-static {v2}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    .line 27
    :cond_8
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 28
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v6, ""

    if-eqz v5, :cond_a

    :try_start_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 29
    invoke-static {}, Ln1/k;->n()Ln1/k;

    move-result-object v5

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ln1/k;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/DownloadHistoryTable;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    goto :goto_2

    .line 31
    :cond_9
    new-instance v5, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    invoke-direct {v5}, Lcom/join/mgps/db/tables/DownloadHistoryTable;-><init>()V

    .line 32
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    .line 34
    :goto_2
    invoke-static {}, Ln1/k;->n()Ln1/k;

    move-result-object v7

    invoke-virtual {v7, v5}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/join/mgps/Util/UtilsMy;->b2(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    new-instance v5, Lcom/join/mgps/pref/PrefDef_;

    sget-object v7, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->lastInstallAppFinish()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v7

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 39
    :cond_a
    :try_start_3
    sget-object v5, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v5

    sget-object v7, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v5}, Lcom/join/android/app/common/utils/APKUtils$a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 42
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 43
    :cond_b
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v5

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 44
    invoke-virtual {v5, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    .line 45
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :cond_c
    :goto_4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 47
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 48
    sget-object v5, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    sget-object v6, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-static {v5, v2, v6}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Event.installAndroidCompleted"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v3

    new-instance v5, Lcom/join/mgps/event/l;

    invoke-direct {v5, v2, v4}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v3, v5}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 51
    :try_start_7
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    .line 54
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    return-void
.end method

.method downloadbygameRecver(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "gameId"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->getDetailData(Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getDetailData(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lq1/c;->R(Lcom/join/mgps/dto/RecomRequestBean;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$g;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$g;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method onConnectivityChanged(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v1, "wifi_state"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const-string v5, "android.net.wifi.STATE_CHANGE"

    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    :cond_0
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7f51\u7edc\u72b6\u6001\uff1a"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iput-boolean v4, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isWifi:Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isWifi:Z

    .line 12
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi\u72b6\u6001\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 13
    invoke-static {v3}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u79fb\u52a8\u7f51\u7edc\u72b6\u6001\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 15
    invoke-static {v3}, Lcom/join/android/app/common/utils/f;->i(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 17
    invoke-static {v3}, Lcom/join/android/app/common/utils/f;->c(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->retryOnSomeTime()V

    .line 19
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity$j;

    invoke-direct {v3, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$j;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "previous_wifi_state"

    .line 26
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_8

    .line 29
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 32
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->activityHasdestroy:Z

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_3

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recommendClient:Lcom/join/mgps/rpc/d;

    .line 6
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->initRecviver()V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 8
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1}, Lg1/f;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->handlerdelay:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public onDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/b;->delete(Ljava/lang/Object;)I

    .line 2
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->b(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/l;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/j;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x26

    invoke-direct {v1, p1, v2}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->activityHasdestroy:Z

    .line 2
    iget-boolean v0, p0, Lcom/BaseAppCompatActivity;->isBackHome:Z

    if-nez v0, :cond_7

    .line 3
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/p;->e()V

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_7

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 7
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 10
    :cond_1
    :goto_0
    :try_start_3
    iget-boolean v0, p0, Lcom/BaseAppCompatActivity;->isBackHome:Z

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->receiver:Lcom/join/mgps/receiver/BootReceiver_;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 13
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 14
    :cond_2
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalDownDataOrObbRecverReceiver_:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 16
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 17
    :cond_3
    :goto_2
    :try_start_7
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 19
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 20
    :cond_4
    :goto_3
    :try_start_9
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->downloadbygameRecverReceiver_:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 22
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 23
    :cond_5
    :goto_4
    :try_start_b
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onConnectivityChangedReceiver_:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 25
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_6
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intent.downloadService.destroyed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :cond_7
    :goto_6
    invoke-super {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;->onDestroy()V

    return-void
.end method

.method public onDownloadEvent(Lcom/join/mgps/event/i;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method onDownloadEvent called.event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/event/i;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/i;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/i;->getType()I

    move-result p1

    const/16 v1, 0x27

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p1

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/join/android/app/common/servcie/a;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/servcie/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x1

    .line 8
    invoke-static {v0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_1

    .line 10
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/servcie/a;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 11
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/event/j;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    invoke-direct {v1, v0, v2}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadRuntimeEvent(Lcom/join/mgps/event/j;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method onRuntimeEvent called."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/event/j;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_8

    .line 3
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/event/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/j;->getType()I

    move-result v1

    const/16 v2, 0x21

    if-eq v1, v2, :cond_1

    .line 5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/join/mgps/event/j;->getType()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/event/j;->getType()I

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_2

    .line 7
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATUS_RUNTIME_SIZE_MISMATCH,gameId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/event/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";realSize="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ";atcualSize="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/p;->H1(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/event/j;->getType()I

    move-result p1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_7

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_6

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_5

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onStop(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 10
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :pswitch_2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Long;

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onProgressUpdate([Ljava/lang/Long;)V

    goto :goto_0

    .line 12
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 13
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onFinish(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    const-string p1, "unzipfailedxx"

    const-string v1, "recived failed"

    .line 14
    invoke-static {p1, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {p1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/activity/ModGameIndexActivity;

    if-nez p1, :cond_4

    .line 16
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    move-result-object p1

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 17
    :cond_4
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_0

    .line 18
    :cond_5
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6587\u4ef6\u51fa\u9519\uff0c\u91cd\u65b0\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 p1, 0xa

    .line 19
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 20
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/event/l;

    invoke-direct {v2, v0, p1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x26

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_0

    .line 22
    :cond_7
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_8
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->J1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/event/l;

    invoke-direct {v2, p1, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/j;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x26

    invoke-direct {v1, p1, v2}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->retryOnSomeTime()V

    return-void
.end method

.method public onFinish(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 9

    .line 1
    const-class v0, Lcom/join/mgps/dto/BootPageData;

    const-string v1, " permissxx   onfinish"

    invoke-static {v1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-double v1, v1

    double-to-long v1, v1

    .line 3
    invoke-virtual {p1, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDuration(J)V

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    mul-double v1, v1, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    .line 5
    invoke-virtual {p1, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x10000000

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xb

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    sget-object v7, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-static {v1, p1, v7}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 11
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v7

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 12
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v7

    invoke-virtual {v7, p1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 13
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v7

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v7

    new-instance v8, Lcom/join/mgps/event/l;

    invoke-direct {v8, p1, v6}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 16
    iget-object v6, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 17
    iget-object v7, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v7}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v7

    invoke-virtual {v7}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-lez v6, :cond_3

    .line 18
    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isAppOnForeground()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 19
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v8

    invoke-virtual {v8, v7, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BootPageData;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    if-nez v0, :cond_0

    .line 21
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/PapaPlugGuideActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->a(I)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->b(Ljava/lang/String;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 22
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 23
    :cond_0
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 24
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 26
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v0, p1, v4, v1}, Lcom/join/android/app/common/utils/h;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 27
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 28
    :cond_2
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->y(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_3
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 30
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 31
    :cond_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 32
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v0, p1, v4, v1}, Lcom/join/android/app/common/utils/h;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 33
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 34
    :cond_5
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->v(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    .line 35
    :cond_7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 36
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 37
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v5}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    return-void

    .line 38
    :cond_8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_a

    .line 40
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 41
    :cond_9
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 42
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v4}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    return-void

    .line 43
    :cond_a
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-static {v1, p1, v3}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 44
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-static {v1, p1, v3}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 45
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 47
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v3, v1, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    if-eqz v1, :cond_b

    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 50
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getVolcanoOther()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v7

    invoke-direct {p0, v3, v4, v1, v7}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->sendPointVolcanno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    :cond_b
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 54
    :try_start_1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 55
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, p1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :goto_2
    iget-object v3, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 58
    iget-object v4, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-lez v3, :cond_d

    .line 59
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isAppOnForeground()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 60
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v7

    invoke-virtual {v7, v4, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BootPageData;

    if-eqz v0, :cond_c

    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 62
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/PapaPlugGuideActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->a(I)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->b(Ljava/lang/String;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 63
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_3

    .line 64
    :cond_c
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->v(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3

    .line 65
    :cond_d
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->v(Landroid/app/Activity;Ljava/lang/String;)V

    .line 66
    :goto_3
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 68
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0, p1, v6}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 69
    :try_start_2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 70
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/b;->update(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    :goto_4
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/l;

    invoke-direct {v1, p1, v6}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_e
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 75
    :cond_10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v1

    if-ne v1, v3, :cond_12

    .line 76
    :cond_11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_a

    .line 77
    :cond_12
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-static {v1, p1, v4}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 78
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-static {v1, p1, v4}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 79
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 81
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    const-class v7, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v4, v1, v7}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    if-eqz v1, :cond_13

    .line 82
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 84
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getVolcanoOther()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v8

    invoke-direct {p0, v4, v7, v1, v8}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->sendPointVolcanno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    :cond_13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v1

    if-ne v1, v3, :cond_14

    goto :goto_5

    .line 86
    :cond_14
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_9

    .line 87
    :cond_15
    :goto_5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v4, 0x30

    .line 90
    invoke-virtual {p1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_6

    .line 91
    :cond_16
    invoke-virtual {p1, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 92
    :goto_6
    :try_start_3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 93
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v4, p1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :goto_7
    iget-object v4, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 96
    iget-object v6, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v4, :cond_18

    .line 97
    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isAppOnForeground()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 98
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BootPageData;

    if-eqz v0, :cond_17

    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v0

    if-eqz v0, :cond_17

    if-nez v3, :cond_17

    .line 100
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/PapaPlugGuideActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->a(I)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->b(Ljava/lang/String;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 101
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_8

    .line 102
    :cond_17
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->v(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_8

    .line 103
    :cond_18
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->v(Landroid/app/Activity;Ljava/lang/String;)V

    .line 104
    :goto_8
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 105
    :goto_9
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 106
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void

    .line 107
    :cond_19
    :goto_a
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 108
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v4}, Lcom/join/android/app/common/servcie/a;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    :cond_1a
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;->onPause()V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastDelay:J

    sub-long/2addr v0, v2

    iget p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->delay:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastDelay:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/event/l;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastDelay:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    const-string v1, "0"

    .line 2
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/event/l;

    invoke-direct {v2, p1, v0}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lg1/f;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/event/l;

    invoke-direct {v2, p1, v1}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/j;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x26

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadStop:Lcom/papa/sim/statistic/Event;

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/b;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    :cond_1
    :goto_0
    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 7
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 8
    :cond_3
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_4
    :goto_0
    return-void
.end method
