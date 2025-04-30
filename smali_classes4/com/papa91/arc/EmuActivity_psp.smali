.class public Lcom/papa91/arc/EmuActivity_psp;
.super Lorg/ppsspp/ppsspp/PpssppActivity;
.source "EmuActivity_psp.java"

# interfaces
.implements Lcom/papa91/arc/view/IEmulator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;,
        Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;,
        Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;,
        Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;,
        Lcom/papa91/arc/EmuActivity_psp$MyReceiver;,
        Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Ppsspp"

.field static isNet:Z = true

.field public static lastWindow:I

.field private static loadingFinished:Z

.field public static mDialog:Landroid/app/Dialog;

.field static mMessenger:Landroid/os/Messenger;

.field static mServiceConnection:Landroid/content/ServiceConnection;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private EXIT_CODE:I

.field START_MODE_NETCLIENT:I

.field START_MODE_NETSERVER:I

.field START_MODE_NETWORK:I

.field START_MODE_RESTART:I

.field private actionReceiver:Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

.field activityQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

.field adResultReceiver:Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;

.field adToastShowing:Z

.field ad_host_url:Ljava/lang/String;

.field alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

.field private appContent:Ljava/lang/String;

.field private appInfo:Landroid/content/pm/PackageInfo;

.field protected autoSlotTime:I

.field cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

.field private checkRealNameType:I

.field dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

.field diskPath:Ljava/lang/String;

.field gameIsPause:Z

.field gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

.field private hasCheckRealName:Z

.field hideTimeRunner:Ljava/lang/Runnable;

.field private intentFilter:Landroid/content/IntentFilter;

.field private isDestroyed:Z

.field isHideAdTimeView:Z

.field private isRecreate:Z

.field limitTime:J

.field limitTimeRunnable:Ljava/lang/Runnable;

.field liveTime:J

.field private loading_real_name:Z

.field loginReceiver:Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;

.field mHandler:Landroid/os/Handler;

.field myReceiver:Lcom/papa91/arc/EmuActivity_psp$MyReceiver;

.field private needCheckRealName:Z

.field netWorkReceiver:Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;

.field perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

.field performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

.field playTime:J

.field pref:Lcom/papa91/wrapper/UserPrefs;

.field realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

.field private receveReceiver:Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;

.field protected serviceConnection:Landroid/content/ServiceConnection;

.field shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

.field shareImagePath:Ljava/lang/String;

.field showTimeLimitedDialog2:Z

.field slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

.field sp:Landroid/content/SharedPreferences;

.field timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

.field timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

.field timer:Ljava/util/Timer;

.field timerTask:Ljava/util/TimerTask;

.field url:Ljava/lang/String;

.field vipBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation
.end field

.field vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

.field vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/PpssppActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/arc/EmuActivity_psp;->EXIT_CODE:I

    const/4 v1, 0x7

    .line 3
    iput v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETWORK:I

    .line 4
    iput v0, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_RESTART:I

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETCLIENT:I

    const/4 v2, 0x2

    .line 6
    iput v2, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETSERVER:I

    const/16 v2, 0x14

    .line 7
    iput v2, p0, Lcom/papa91/arc/EmuActivity_psp;->autoSlotTime:I

    .line 8
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    .line 9
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 10
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->hasCheckRealName:Z

    .line 11
    iput-boolean v1, p0, Lcom/papa91/arc/EmuActivity_psp;->needCheckRealName:Z

    const/16 v1, 0xb

    .line 12
    iput v1, p0, Lcom/papa91/arc/EmuActivity_psp;->checkRealNameType:I

    .line 13
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->isHideAdTimeView:Z

    const-string v1, "http://anv9.ctapi.5fun.com"

    .line 14
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appContent:Ljava/lang/String;

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    const-string v1, "http://anctapi.5fun.com"

    .line 17
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->ad_host_url:Ljava/lang/String;

    .line 18
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$15;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$15;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->serviceConnection:Landroid/content/ServiceConnection;

    .line 19
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adToastShowing:Z

    .line 20
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$18;

    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$18;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->hideTimeRunner:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    .line 22
    iput-wide v0, p0, Lcom/papa91/arc/EmuActivity_psp;->limitTime:J

    .line 23
    new-instance v2, Lcom/papa91/arc/EmuActivity_psp$24;

    invoke-direct {v2, p0}, Lcom/papa91/arc/EmuActivity_psp$24;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->limitTimeRunnable:Ljava/lang/Runnable;

    .line 24
    iput-wide v0, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static ShowSetNetWorkDialog()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/EmuActivity_psp;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$17;

    invoke-direct {v1}, Lcom/papa91/arc/EmuActivity_psp$17;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->lambda$handleButtonAction$4(Lcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/EmuActivity_psp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa91/arc/EmuActivity_psp;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/papa91/arc/EmuActivity_psp;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->download(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/papa91/arc/EmuActivity_psp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->m_SVIP:I

    return p1
.end method

.method static synthetic access$1400(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPathInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/papa91/arc/EmuActivity_psp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->m_SVIP:I

    return p1
.end method

.method static synthetic access$1900(Lcom/papa91/arc/EmuActivity_psp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/papa91/arc/EmuActivity_psp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/EmuActivity_psp;->EXIT_CODE:I

    return p1
.end method

.method static synthetic access$2100(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/papa91/arc/EmuActivity_psp;->handleButtonAction(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/papa91/arc/EmuActivity_psp;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->playCountDown(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/papa91/arc/EmuActivity_psp;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    return-object p0
.end method

.method public static synthetic b(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/Request;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->lambda$checkRealName$3(Lcom/papa91/arc/bean/Request;I)V

    return-void
.end method

.method public static synthetic c(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->lambda$getDiskPaths$2(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "\uff08"

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "cheat\\s*?\"([^\"]*?)\""

    .line 4
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, "[0-1][^,]*?,\\s+?\"([^\"]*?)\""

    .line 5
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const-string v9, "\\[([^\\]]*?)\\]"

    .line 6
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    const-string v10, "\\{([^\\}]*?)\\}"

    .line 7
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string v11, "\"name\":\"([^\"]*?)\"\\s*?,\\s*?\"vaule\":\"([^\"]*?)\"\\s*?,\\s*?\"isGS\":(.*)"

    .line 8
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 9
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v13, "0"

    const-string v14, "1"

    const-string v4, "UTF-8"

    const-string v12, "\n"

    const-string v15, "_C"

    move-object/from16 v17, v13

    const-string v13, "_L "

    if-eqz v5, :cond_6

    .line 10
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    move-object/from16 v18, v11

    new-instance v11, Ljava/io/InputStreamReader;

    move-object/from16 v19, v10

    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v20, v9

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 11
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 12
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".?cheat.*?"

    .line 13
    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 14
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_0

    .line 15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    move-object/from16 v21, v2

    .line 16
    :goto_1
    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    .line 18
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1
    move-object/from16 v21, v2

    const-string v2, "default"

    .line 19
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "default\\s+0"

    invoke-virtual {v9, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, v17

    goto :goto_2

    :cond_2
    move-object v2, v14

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 21
    :cond_3
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22
    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 24
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_3
    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 25
    :cond_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v4, v5

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v4, v5

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object v4, v5

    goto/16 :goto_f

    :cond_6
    move-object/from16 v20, v9

    move-object/from16 v19, v10

    move-object/from16 v18, v11

    .line 26
    :goto_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 28
    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    move-object/from16 v1, v20

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    .line 31
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v19

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 32
    :goto_6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 33
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, v18

    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 34
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 35
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v14

    goto :goto_7

    :cond_7
    move-object/from16 v8, v17

    :goto_7
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_8
    const/16 v8, 0x20

    const/4 v9, 0x1

    :goto_8
    move-object/from16 v18, v5

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v5, v18

    goto :goto_9

    :cond_a
    move-object/from16 v5, v18

    move-object/from16 v6, v19

    :goto_9
    const/16 v8, 0x20

    const/4 v9, 0x1

    move-object/from16 v20, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    goto :goto_5

    .line 37
    :cond_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v4, v2

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v4, v2

    goto :goto_f

    .line 38
    :cond_c
    :goto_a
    :try_start_5
    new-instance v0, Ljava/io/File;

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 41
    :cond_d
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 42
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 44
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 45
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_13

    :catchall_2
    move-exception v0

    move-object/from16 v16, v1

    const/4 v4, 0x0

    goto :goto_14

    :catch_4
    move-exception v0

    move-object/from16 v16, v1

    const/4 v4, 0x0

    goto :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v16, v1

    const/4 v4, 0x0

    goto :goto_10

    :catchall_3
    move-exception v0

    const/4 v4, 0x0

    :goto_b
    const/16 v16, 0x0

    goto :goto_14

    :catch_6
    move-exception v0

    const/4 v4, 0x0

    :goto_c
    const/16 v16, 0x0

    .line 46
    :goto_d
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_e

    .line 47
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_e

    :catch_7
    nop

    :cond_e
    :goto_e
    if-eqz v16, :cond_10

    goto :goto_12

    :catch_8
    move-exception v0

    const/4 v4, 0x0

    :goto_f
    const/16 v16, 0x0

    .line 48
    :goto_10
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v4, :cond_f

    .line 49
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_11

    :catch_9
    nop

    :cond_f
    :goto_11
    if-eqz v16, :cond_10

    .line 50
    :goto_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    :cond_10
    :goto_13
    return-void

    :catchall_4
    move-exception v0

    :goto_14
    if-eqz v4, :cond_11

    .line 51
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_15

    :catch_a
    nop

    :cond_11
    :goto_15
    if-eqz v16, :cond_12

    .line 52
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 53
    :cond_12
    goto :goto_17

    :goto_16
    throw v0

    :goto_17
    goto :goto_16
.end method

.method public static createDir(Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521b\u5efa\u76ee\u5f55\u6210\u529f\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25\uff01"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2
.end method

.method static createResFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bios"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_7

    if-nez p3, :cond_3

    .line 9
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 12
    aget-object v6, p2, v2

    invoke-virtual {p0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7

    .line 14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    int-to-long v6, v7

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 16
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 18
    :cond_4
    aget-object v3, p2, v2

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 20
    :goto_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_6

    .line 21
    invoke-virtual {v4, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 23
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 24
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 25
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static synthetic d(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->lambda$closeRealNameDialog$5()V

    return-void
.end method

.method public static delayStatistics(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/papa91/arc/EmuActivity_psp;->netBattleMatchEfficiency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static download(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->v(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 3
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->A(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->C(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p0}, Lcom/facebook/imagepipeline/core/g;->L(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;

    return-void
.end method

.method public static synthetic e(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/papa91/arc/EmuActivity_psp;->lambda$getDiskPaths$1(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static exitActivity(I)V
    .locals 0

    const/4 p0, 0x2

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/EmuActivity_psp;->sendGamePlay(I)V

    return-void
.end method

.method public static synthetic f(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->lambda$showAdView$0()V

    return-void
.end method

.method protected static gameOut(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gameout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "uid"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "sec"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/EmuActivity_psp;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getHostPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    return-object v0
.end method

.method private getNextTip(Ljava/util/HashMap;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 p2, 0x0

    .line 3
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, -0x1

    :goto_1
    return p2
.end method

.method static getSDPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUgcPath()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/papa91/psp/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v0
.end method

.method private getUgcPathInternal()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "/emus/"

    const-string v3, "/"

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v0
.end method

.method private goVipShop(I)V
    .locals 13

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/VipBean;

    .line 14
    invoke-virtual {p1}, Lcom/papa91/arc/bean/VipBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&gameId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=4&gameName=\u5bf9\u6218\u7545\u73a9&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "4"

    const-string v3, "0"

    const-string v5, "685248020"

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17
    :cond_2
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=5&gameName=\u5feb\u901f\u9009\u5173&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v8, "4"

    const-string v9, "0"

    const-string v11, "461784020"

    const-string v12, ""

    invoke-static/range {v7 .. v12}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=3&gameName=\u66f4\u591a\u5b58\u6863&returnStatus=1&gameId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "4"

    const-string v2, "0"

    const-string v4, "3505974813"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=1&gameName=\u91d1\u624b\u6307&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v7, "4"

    const-string v8, "0"

    const-string v10, "1778130821"

    const-string v11, ""

    invoke-static/range {v6 .. v11}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=2&gameName=\u4e00\u952e\u6280\u80fd&returnStatus=1&gameId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "4"

    const-string v2, "0"

    const-string v4, "2489914047"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private goWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleButtonAction(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V
    .locals 4

    if-eqz p3, :cond_6

    .line 1
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    move-result p2

    if-ne v2, p2, :cond_0

    .line 3
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/papa91/arc/EmuActivity_psp;->showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V

    goto/16 :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/papa91/arc/dialog/PerfectWarmDialog;

    invoke-direct {p2, p0}, Lcom/papa91/arc/dialog/PerfectWarmDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 5
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setData(Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 6
    iget-object p2, p0, Lcom/papa91/arc/EmuActivity_psp;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    new-instance p3, Lcom/papa91/arc/EmuActivity_psp$27;

    invoke-direct {p3, p0, p1, p4}, Lcom/papa91/arc/EmuActivity_psp$27;-><init>(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;I)V

    invoke-virtual {p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setListener(Lcom/papa91/arc/interfaces/IDialogListener;)Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 p4, 0x4

    .line 8
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "0"

    const-string v3, "antiAddtionWindowUp"

    if-ne p4, v0, :cond_3

    .line 9
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    :cond_2
    invoke-virtual {p0, v3, v1}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-boolean v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    iput v2, p0, Lcom/papa91/arc/EmuActivity_psp;->EXIT_CODE:I

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v2, p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/papa91/arc/d;

    invoke-direct {p2, p0, p3}, Lcom/papa91/arc/d;-><init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/ButtonBean;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    .line 17
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p1, p3, :cond_5

    .line 18
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 19
    invoke-virtual {p0, v3, v1}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-boolean v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    iput v2, p0, Lcom/papa91/arc/EmuActivity_psp;->EXIT_CODE:I

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 24
    :cond_6
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp$25;-><init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V

    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isNetworkConnected()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$checkRealName$3(Lcom/papa91/arc/bean/Request;I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->checkRealName(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    move-result-object p1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/PopwindowBean;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getPopup()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V

    :cond_0
    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    .line 8
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->playCountDown(J)V

    goto :goto_0

    :cond_1
    const-string p2, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 12
    :cond_2
    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 13
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$closeRealNameDialog$5()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$getDiskPaths$1(Ljava/io/File;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".iso"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getDiskPaths$2(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$handleButtonAction$4(Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/ButtonBean;->getJumpLink()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->goWebView(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "clickKnowGoRealPage"

    const-string v0, "0"

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showAdView$0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getHasShowAdInfo()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/papa91/arc/EmuActivity_psp;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/AdInfoBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/view/MenuView;->showAdImage(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private loadDNSURL()V
    .locals 3

    const-string v0, ""

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "jsonData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    new-instance v2, Lcom/papa91/arc/MyJson;

    invoke-direct {v2, v1}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V

    const-string v1, "dnsJson"

    .line 3
    invoke-virtual {v2, v1, v0}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "appContent"

    .line 6
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appContent:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/simulator/simulator_member_fun_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->url:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static login()V
    .locals 7

    const-string v0, "com.join.mgps.activity.login.LoginSplashActivity_"

    const-string v1, "intentFrom"

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x5

    .line 1
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.join.android.app.mgsim"

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 9
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    new-instance v5, Landroid/content/ComponentName;

    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 15
    :catch_1
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 16
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.join.android.app.mgsim.wufan.mha"

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 19
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_0
    return-void
.end method

.method protected static netBattleMatchEfficiency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.netbattlematchefficiency"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "uid"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "jsonData"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private playCountDown(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->limitTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iput-wide p1, p0, Lcom/papa91/arc/EmuActivity_psp;->limitTime:J

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/papa91/arc/EmuActivity_psp;->limitTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static playTime(J)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.playtime"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sec"

    .line 4
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method static send(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getHostPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/papa91/arc/EmuActivity_psp;->sendInBridge(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static sendGamePlay(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamePlay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    sget p0, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    const-string v1, "startMode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    sget-object p0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    const-string v1, "gameId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object p0, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    return-void
.end method

.method static sendInBridge(Landroid/content/Intent;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v2, "action"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p0, Lorg/ppsspp/ppsspp/NativeActivity;->className:Ljava/lang/String;

    const-string v2, "fromCls"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    :try_start_0
    sget-object p0, Lcom/papa91/arc/EmuActivity_psp;->mMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendLimitStat(Ljava/lang/String;)V
    .locals 2

    const-string v0, "OnClickPSPCutDown"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.join.android.app.mgsim.wufun.broadcast.emu.psp.countdown"

    goto :goto_0

    :cond_0
    const-string v0, "PSPLimitPopup"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitpopup"

    goto :goto_0

    :cond_1
    const-string v0, "PSPLimitPlay"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitplay"

    goto :goto_0

    :cond_2
    const-string v0, "PSPLimitMember"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitmember"

    goto :goto_0

    :cond_3
    const-string v0, "PSPLimitQuit"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitquit"

    goto :goto_0

    :cond_4
    const-string p0, ""

    .line 6
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    sget-object p0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    const-string v1, "gameId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    sget-object p0, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    return-void
.end method

.method private showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 2

    const-string v0, "realNameDisplayWindow"

    const-string v1, "0"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/papa91/arc/dialog/RealNameDialog;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$26;

    invoke-direct {v1, p0, p2}, Lcom/papa91/arc/EmuActivity_psp$26;-><init>(Lcom/papa91/arc/EmuActivity_psp;I)V

    invoke-direct {v0, p0, p1, v1}, Lcom/papa91/arc/dialog/RealNameDialog;-><init>(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/arc/interfaces/RealNameCallBack;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

    .line 3
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/papa91/arc/dialog/RealNameDialog;->show(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static startVideo()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tools.AdBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    const/4 v2, 0x7

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static startplayTime(I)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startplayTime1abc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    int-to-long v0, p0

    .line 2
    invoke-static {v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->playTime(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startplayTime3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected static unLockSP(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public HttpPost_Memer()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->httpPostMemberInfo()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 4
    :goto_0
    sget-object v0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public IsHapticFeedbackEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->IsHapticFeedbackEnable()Z

    move-result v0

    return v0
.end method

.method public IsSoundEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->IsSoundEnable()Z

    move-result v0

    return v0
.end method

.method public addEditCheatInfo(Lorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->addEditCheat(Lorg/ppsspp/ppsspp/EditCheatInfo;)V

    return-void
.end method

.method protected attachMenu()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->attachMenu()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->showAdView()V

    return-void
.end method

.method bakState()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/arc/util/FileUtils;->getSlotFilter()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$13;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$13;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPathInternal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/papa91/arc/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPathInternal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/papa91/arc/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method bindBridge()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$16;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$16;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    sput-object v1, Lcom/papa91/arc/EmuActivity_psp;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getHostPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.join.mgps.va.service.MessengerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    sget-object v2, Lcom/papa91/arc/EmuActivity_psp;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bindService()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->gameStart()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->bindBridge()V

    return-void
.end method

.method changeCfgPath()V
    .locals 4

    const-string v0, "/PSP"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v0, v1}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {v0, v1}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cheatInfoEnable(II)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lorg/ppsspp/ppsspp/NativeApp;->cheatEnable(II)V

    .line 2
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenGoldfinger(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkCheatCodeInfo(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u4f5c\u5f0a\u7801\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p1, p2}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u4f5c\u5f0a\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p1, p2}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->checkCheatCode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u4f5c\u5f0a\u7801\u683c\u5f0f\u6709\u8bef\uff01"

    invoke-static {p1, p2}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method checkRealName(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5\uff01"

    .line 2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/papa91/arc/http/HttpUtils;->init(Landroid/content/Context;)V

    .line 4
    iget-boolean v1, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z

    .line 6
    new-instance v1, Lcom/papa91/arc/bean/ReqRealNameArgs;

    invoke-direct {v1}, Lcom/papa91/arc/bean/ReqRealNameArgs;-><init>()V

    .line 7
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setUid(Ljava/lang/Integer;)V

    .line 8
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setUserToken(Ljava/lang/String;)V

    const-string v2, "SO_SIMULATOR"

    .line 9
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setGameType(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setType(Ljava/lang/Integer;)V

    .line 11
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setGameId(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setAction(Ljava/lang/Integer;)V

    const-string v2, "ANDROID"

    .line 13
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setPlatformType(Ljava/lang/String;)V

    .line 14
    invoke-static {p0, v1}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 16
    new-instance v2, Lcom/papa91/arc/e;

    invoke-direct {v2, p0, v1, p1}, Lcom/papa91/arc/e;-><init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/Request;I)V

    invoke-static {v2}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z

    :goto_0
    return-void
.end method

.method public closeDialogWithOut(Lcom/papa91/arc/dialog/SettingDialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 3
    :cond_0
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 6
    :cond_2
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismiss()V

    .line 9
    :cond_4
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    if-eqz v0, :cond_7

    if-eq v0, p1, :cond_7

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 12
    :cond_6
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    :cond_7
    return-void
.end method

.method protected closeRealNameDialog()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/b;

    invoke-direct {v0, p0}, Lcom/papa91/arc/b;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteEditCheatInfo(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->deleteEditCheat(I)V

    return-void
.end method

.method public enableEidtCheat(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getVip()I

    move-result v0

    const-string v1, "Custom_openGoldfinger"

    const-string v2, ""

    if-lez v0, :cond_0

    .line 2
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableEidtCheat(I)V

    .line 3
    invoke-virtual {p0, v1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableEidtCheat(I)V

    const-string p1, "Custom_closeGoldfinger"

    .line 5
    invoke-virtual {p0, p1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    sget-object v3, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    if-eqz v3, :cond_3

    if-ne p2, v0, :cond_3

    .line 7
    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-interface {v3, p0, p2, p1}, Lcom/papa91/arc/CContext$IVideoAdListener;->showGoldAdDialog(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableEidtCheat(I)V

    .line 9
    invoke-virtual {p0, v1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public exit()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->exit1()V

    return-void
.end method

.method public exit1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/dialog/TipTwoDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/TipTwoDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 3
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$4;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$4;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/TipTwoDialog;->setListener(Lcom/papa91/arc/dialog/TipTwoDialog$OnOptionsListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$5;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$5;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$6;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$6;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    :cond_1
    return-void
.end method

.method public exitActivty(I)V
    .locals 5

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    iget v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETWORK:I

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "papa_broadcast_continue_match_fight"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "game_end_state"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/ppsspp/ppsspp/NativeActivity;->startTIme:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 6
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/papa91/arc/EmuActivity_psp;->gameOut(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 7
    invoke-virtual {p0, p0}, Lcom/papa91/arc/EmuActivity_psp;->gameDestroy(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "_"

    if-nez v0, :cond_1

    .line 8
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/mgpapa/aidlservice/Game_out_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    .line 9
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lorg/ppsspp/ppsspp/NativeActivity;->startTIme:J

    .line 10
    sget v1, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    iget v3, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_RESTART:I

    if-ne v1, v3, :cond_2

    if-nez v0, :cond_5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mgpapa/aidlservice/Game_start15_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    goto :goto_1

    .line 12
    :cond_2
    iget v3, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETCLIENT:I

    if-eq v1, v3, :cond_4

    iget v3, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETSERVER:I

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_5

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mgpapa/aidlservice/Game_start160_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mgpapa/aidlservice/Game_startBattle15_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->exitActivity(I)V

    return-void
.end method

.method public forceExit()V
    .locals 5

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 1
    :try_start_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->IsEmuExitFinish()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0xc8

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public forum()V
    .locals 3

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lorg/ppsspp/ppsspp/NativeActivity;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->goForum(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected gameDestroy(Landroid/app/Activity;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v5, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v3, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    cmp-long p1, v3, v1

    if-lez p1, :cond_3

    .line 11
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.emu.gamePlayTimes"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "gameId"

    .line 12
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "liveTime"

    .line 13
    iget-wide v1, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 15
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public gameOnPause()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pauseGame()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    return-void
.end method

.method public gameOnResume()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resumeGame()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    return-void
.end method

.method protected gamePause(Landroid/app/Activity;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-wide v3, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected gameResume(Landroid/app/Activity;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method gameStart()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/ppsspp/ppsspp/NativeActivity;->startTIme:J

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    iget v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_RESTART:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "_"

    if-ne v0, v1, :cond_0

    .line 3
    :try_start_1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->gameStart15(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mgpapa/aidlservice/Game_start15_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 5
    :cond_0
    iget v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETCLIENT:I

    if-eq v0, v1, :cond_2

    iget v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETSERVER:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v0}, Lcom/papa91/arc/EmuActivity_psp;->gameStart160(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mgpapa/aidlservice/Game_start160_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->gameStartBattle15(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mgpapa/aidlservice/Game_startBattle15_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method gameStart15(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestart15"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method gameStart160(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestart160"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "startMode"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method gameStartBattle15(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestartbattle15"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getAdRequestParam()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "platform"

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2
    :try_start_0
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "\'"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2}, Lcom/papa91/arc/EmuActivity_psp;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->httpKeySign:Ljava/lang/String;

    .line 7
    new-instance v2, Lcom/papa91/arc/MyJson;

    invoke-direct {v2}, Lcom/papa91/arc/MyJson;-><init>()V

    :try_start_1
    const-string v3, "version"

    .line 8
    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "deviceid"

    .line 9
    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sign"

    .line 10
    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->httpKeySign:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channelNum"

    .line 12
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    new-instance v0, Lcom/papa91/arc/MyJson;

    invoke-direct {v0}, Lcom/papa91/arc/MyJson;-><init>()V

    const-string v1, "simulatorType"

    .line 14
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getSimulatorType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "args"

    .line 15
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 17
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoSlotStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoStateMax()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getAutoStateTimeCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/arc/EmuActivity_psp;->autoSlotTime:I

    if-gtz v0, :cond_0

    const/16 v0, 0x14

    .line 2
    iput v0, p0, Lcom/papa91/arc/EmuActivity_psp;->autoSlotTime:I

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lcom/papa91/arc/EmuActivity_psp;->autoSlotTime:I

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/papa91/arc/EmuActivity_psp;->autoSlotTime:I

    return v0
.end method

.method public getAutoStateTimeGap()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getChangeDiskState()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->NeedChangeDisk()Z

    move-result v0

    return v0
.end method

.method public getCheatListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->loadPspDBCheat()V

    .line 2
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getCheatList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurChar()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentChar()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getCurChar()I

    move-result v0

    return v0
.end method

.method public getCustomCheatTip(Z)Ljava/lang/String;
    .locals 0

    const-string p1, "\u91d1\u624b\u6307\u7801\u6bcf\u884c\u5206\u4e3a\u4e24\u90e8\u5206:\n\u7b2c\u4e00\u90e8\u5206\uff1a0x+8\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\n\u7b2c\u4e8c\u90e8\u5206\uff1a0x+8\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\n\u4e24\u90e8\u5206\u4e2d\u95f4\u8bf7\u7528\u3010\u7a7a\u683c\u3011\u5206\u5272\uff0c\u4f8b\uff1a0x12345678 0x1234ABCD"

    return-object p1
.end method

.method public getDiskPaths()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/papa91/arc/a;->a:Lcom/papa91/arc/a;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/arc/f;->a:Lcom/papa91/arc/f;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 7
    iget-object v4, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEditCheatListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getEditCheatList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    return-object v0
.end method

.method public getGateData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/GateBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    const-string v1, "MD5"

    .line 1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 6
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "0"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 8
    :cond_0
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getMenuTypes(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/TypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    const/4 v2, 0x0

    const/4 v4, 0x1

    sget v6, Lorg/ppsspp/ppsspp/R$drawable;->ic_cheat_vip:I

    const-string v3, "\u609f\u996d\u5b9a\u5236"

    move-object v1, p1

    move v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const-string v9, "\u81ea\u5b9a\u4e49"

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v4, "\u6211\u7684\u5b58\u6863"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getModSubfix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method getOStateFilter(Ljava/lang/String;)Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$14;

    invoke-direct {v0, p0, p1}, Lcom/papa91/arc/EmuActivity_psp$14;-><init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRequestParam()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "\'"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/papa91/arc/EmuActivity_psp;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->httpKeySign:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/papa91/arc/MyJson;

    invoke-direct {v0}, Lcom/papa91/arc/MyJson;-><init>()V

    :try_start_1
    const-string v1, "version"

    .line 8
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceid"

    .line 9
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sign"

    .line 10
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->httpKeySign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    new-instance v1, Lcom/papa91/arc/MyJson;

    invoke-direct {v1}, Lcom/papa91/arc/MyJson;-><init>()V

    .line 12
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "args"

    .line 13
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "messages"

    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 15
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 16
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatorType()Ljava/lang/String;
    .locals 1

    const-string v0, "psp"

    return-object v0
.end method

.method public getSkillConfigData()Lcom/papa91/arc/bean/SkillConfigBean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpBindImages(I)[I
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()I
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-static {v0}, Lcom/papa91/arc/SnkConfig;->isSnkGame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    return v0

    .line 2
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    return v0
.end method

.method public getVipData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    return-object v0
.end method

.method public goForum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.join.mgps.activity.ForumActivity_"

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "fid"

    .line 5
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "name"

    .line 6
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "icon_src"

    .line 7
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "users"

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "posts"

    .line 9
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "add_time"

    .line 10
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 11
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_forum_bean"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    const-string p1, "com.wufun.intent.activity.view.action.emuintent"

    .line 13
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p1, "com.papa.intent.activity.view.action.emuintent"

    .line 15
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public goSlotShop()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    const-string v2, ""

    const-string v3, "https://anv3cjapi.5fun.com/member/vip_view/welfare/psp_ad"

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public goVipShop(IZ)V
    .locals 7

    if-eqz p2, :cond_6

    const-string p2, "&gameId="

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorCheckpointUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->goVipShop(I)V

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorCheckpointUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "4"

    const-string v3, "0"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorGoldenFingerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->goVipShop(I)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorGoldenFingerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "4"

    const-string v3, "0"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorOneSkillUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->goVipShop(I)V

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorOneSkillUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "4"

    const-string v3, "0"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_6
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->goVipShop(I)V

    :goto_0
    return-void
.end method

.method protected handleAdError(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "adAction"

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    const-string p1, "extras"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "state"

    .line 5
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz p2, :cond_1

    if-eq p1, v0, :cond_1

    .line 8
    invoke-virtual {p2, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    :cond_1
    return-void
.end method

.method protected handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "adAction"

    const/16 v0, 0x3f0

    .line 1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "extras"

    .line 2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "close"

    .line 5
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string p2, "state"

    .line 6
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-eq p2, v3, :cond_2

    .line 9
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz p1, :cond_2

    if-eq p2, v3, :cond_2

    .line 11
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method hasExternalPermission()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hideAdCountDown()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->isHideAdTimeView:Z

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->hideTimeRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->hideTimeRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method initArgs()V
    .locals 7

    .line 1
    sput-object p0, Lcom/papa91/arc/EmuActivity_psp;->sContext:Landroid/content/Context;

    .line 2
    invoke-static {p0}, Lcom/papa91/arc/util/GameSettings;->init(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Lcom/papa91/arc/MyJson;

    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_3

    .line 6
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    const-string v2, "pa_package_name"

    invoke-virtual {v0, v2, v1}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    const-string v1, "startMode"

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    const-string v1, "romPath"

    const-string v3, ""

    .line 8
    invoke-virtual {v0, v1, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    const-string v1, "ugcPath"

    .line 9
    invoke-virtual {v0, v1, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    const-string v4, "assetspath"

    .line 10
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/ppsspp/ppsspp/NativeActivity;->assetsPath:Ljava/lang/String;

    .line 11
    new-instance v5, Ljava/io/File;

    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    const-string v5, "sopath"

    .line 12
    invoke-virtual {v0, v5, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/ppsspp/ppsspp/NativeActivity;->soPath:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->assetsPath:Ljava/lang/String;

    const-string v4, "activityName"

    .line 14
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->className:Ljava/lang/String;

    const-string v5, "."

    const-string v6, "/"

    .line 15
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->className:Ljava/lang/String;

    const-string v4, "userID"

    .line 16
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const-string v4, "gameID"

    .line 17
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    const-string v4, "plugin_area_val"

    .line 18
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lorg/ppsspp/ppsspp/NativeActivity;->fid:I

    const-string v4, "roomID"

    .line 19
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->RoomID:Ljava/lang/String;

    const-string v4, "version"

    .line 20
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->Version:Ljava/lang/String;

    const-string v4, "serverIP"

    .line 21
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->server_ip:Ljava/lang/String;

    const-string v4, "serverPort"

    .line 22
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->server_port:Ljava/lang/String;

    const-string v4, "token"

    const-string v5, "0"

    .line 23
    invoke-virtual {v0, v4, v5}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    const-string v4, "sp_lock"

    .line 24
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lorg/ppsspp/ppsspp/NativeActivity;->spLock:I

    const-string v4, "sVipLevel"

    .line 25
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->m_SVIP:I

    const-string v4, "vipLevel"

    .line 26
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    const-string v4, "pspAdShowTime"

    .line 27
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTime:J

    const-string v4, "pspAdShowTimeSwitch"

    .line 28
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTimeSwitch:J

    .line 29
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "allowPeripheralJoin"

    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->allowPeripheralJoin:Z

    const-string v4, "tourist"

    .line 30
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lorg/ppsspp/ppsspp/NativeActivity;->tourist:Z

    const-string v2, "channelId"

    .line 31
    invoke-virtual {v0, v2, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->channelId:Ljava/lang/String;

    .line 32
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 33
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/papa91/psp/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Ljava/io/File;

    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 38
    :cond_0
    :try_start_1
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 39
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 40
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initTotalLevel()V

    .line 41
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getCustomSettingEnable()Z

    move-result v1

    const-string v2, "gameSettingLevel"

    if-eqz v1, :cond_2

    const-string v1, "5"

    goto :goto_2

    .line 42
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getGameSettingLevel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 43
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 44
    :cond_3
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    goto :goto_4

    .line 45
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initArgsDefault()V

    .line 46
    :goto_4
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    goto :goto_5

    .line 48
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    .line 49
    :goto_5
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    return-void
.end method

.method initArgsDefault()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/1/lzzzwddh2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method initReceiver()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->netWorkReceiver:Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;

    .line 4
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->registerLogin()V

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->registerAdReceiver()V

    .line 7
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->receveReceiver:Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.emu.ad.result"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->receveReceiver:Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->registerMyReceiver()V

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->actionReceiver:Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->actionReceiver:Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

    .line 14
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.emu.realName.result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->actionReceiver:Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method initTimeLimitedDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/view/GameTimeLimitedDialog;

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/papa91/arc/view/GameTimeLimitedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 3
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getPspGameAdCfg()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    invoke-virtual {v1, v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->setAdConfig(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$19;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$19;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->setOnTimeLimitedListener(Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;)V

    :cond_0
    return-void
.end method

.method initTotalLevel()V
    .locals 3

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/io/File;

    const-string v2, "psp_gamesetting5.ini"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "psp_gamesetting5.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    :cond_1
    const/4 v0, 0x4

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/papa91/arc/util/GameSettings;->setGameSettingTotalLevel(I)V

    return-void
.end method

.method isHideAdToday()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    invoke-virtual {v1, v0}, Lcom/papa91/wrapper/UserPrefs;->getLastTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    invoke-virtual {v3, v0}, Lcom/papa91/wrapper/UserPrefs;->getSkipAd(Ljava/lang/String;)Z

    move-result v3

    .line 5
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v3, :cond_0

    .line 7
    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isLogined()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->tourist:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRankAutoUpload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSPVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowCheating()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowGate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowQuickSlot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keysSetting()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->enterGameSettings(I)V

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->hide()V

    const/4 v0, 0x1

    .line 3
    sput v0, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    return-void
.end method

.method public loadAdVideo()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getVip()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    if-eqz v0, :cond_0

    const-string v1, "PSP"

    .line 3
    invoke-interface {v0, p0, v1}, Lcom/papa91/arc/CContext$IVideoAdListener;->loadAd(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadGateStage(I)V
    .locals 0

    return-void
.end method

.method public loadRom()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->setJson(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->emuRestart()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "jsonData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->setJson(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->emuRestart()V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadSlotState(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->loadState(Ljava/lang/String;)V

    return-void
.end method

.method protected loginFinish()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->needCheckRealName:Z

    const/16 v0, 0xb

    .line 2
    iput v0, p0, Lcom/papa91/arc/EmuActivity_psp;->checkRealNameType:I

    return-void
.end method

.method migrate()V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/PSP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/papa91/psp/PSP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 6
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " time :"

    const-string v6, "--- "

    if-eqz v4, :cond_1

    .line 7
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "renameTo suc : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "renameTo fail : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->changeCfgPath()V

    .line 11
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->saveDataTransfer()V

    .line 12
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->stateTransfer()V

    .line 13
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->syncState()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/PSP/Cheats/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 18
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/papa91/psp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/editCheat.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/PSP/Cheats"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s1 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " s2 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " s3 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {v0, v3, v1}, Lcom/papa91/arc/EmuActivity_psp;->convert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public modifyEditCheatInfo(ILorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/ppsspp/ppsspp/NativeApp;->modifyEditCheat(ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    return-void
.end method

.method public needShowTimer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAdImageClick()V
    .locals 7

    .line 1
    invoke-super {p0}, Lorg/ppsspp/ppsspp/PpssppActivity;->onAdImageClick()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/arc/EmuActivity_psp;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v1, v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->saveHasShowAdInfo(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/AdInfoBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, ""

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/view/MenuView;->showAdImage(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onChangeDisk()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getDiskPaths()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->ChangeDisk(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->loadDNSURL()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "jsonData"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initArgs()V

    .line 7
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initReceiver()V

    .line 8
    invoke-super {p0, p1}, Lorg/ppsspp/ppsspp/PpssppActivity;->onCreate(Landroid/os/Bundle;)V

    .line 9
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-boolean p1, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->hide()V

    :cond_1
    return-void

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->migrate()V

    .line 13
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/papa91/wrapper/UserPrefs;->setSlotTipShow(Z)V

    .line 14
    sget-boolean p1, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->hide()V

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->bindService()V

    const-string p1, ""

    .line 17
    sput-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    .line 19
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreAdData()V

    .line 20
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->startTimer()V

    const/4 p1, 0x0

    .line 21
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->sendGamePlay(I)V

    .line 22
    iget-boolean v1, p0, Lcom/papa91/arc/EmuActivity_psp;->hasCheckRealName:Z

    if-nez v1, :cond_4

    const/16 v1, 0xb

    .line 23
    invoke-virtual {p0, v1}, Lcom/papa91/arc/EmuActivity_psp;->checkRealName(I)V

    .line 24
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->hasCheckRealName:Z

    .line 25
    iput-boolean p1, p0, Lcom/papa91/arc/EmuActivity_psp;->needCheckRealName:Z

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->isDestroyed:Z

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->stopTimer()V

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->receveReceiver:Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->unregisterLogin()V

    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->unregisterAdReceiver()V

    .line 6
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->actionReceiver:Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iget-boolean v2, p0, Lcom/papa91/arc/EmuActivity_psp;->isRecreate:Z

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Lcom/papa91/arc/EmuActivity_psp;->exitActivty(I)V

    .line 10
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->unregisterMyReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v2}, Lcom/papa91/arc/EmuActivity_psp;->closeDialogWithOut(Lcom/papa91/arc/dialog/SettingDialog;)V

    .line 14
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    invoke-virtual {v3}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 16
    :cond_2
    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 17
    :cond_3
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    if-eqz v3, :cond_5

    .line 18
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    invoke-virtual {v3}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->dismiss()V

    .line 20
    :cond_4
    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 21
    :cond_5
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    if-eqz v3, :cond_7

    .line 22
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    invoke-virtual {v3}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 23
    :cond_6
    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 24
    :cond_7
    iget-boolean v2, p0, Lcom/papa91/arc/EmuActivity_psp;->isRecreate:Z

    if-nez v2, :cond_9

    .line 25
    sput-boolean v1, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    .line 26
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatReset()V

    .line 28
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->unregisterMyReceiver()V

    .line 29
    :cond_9
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->unbindBridge()V

    .line 30
    invoke-super {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->onDestroy()V

    const/4 v1, 0x2

    .line 31
    invoke-static {v1}, Lcom/papa91/arc/EmuActivity_psp;->sendGamePlay(I)V

    .line 32
    iget v1, p0, Lcom/papa91/arc/EmuActivity_psp;->EXIT_CODE:I

    if-ne v1, v0, :cond_a

    .line 33
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->forceExit()V

    :cond_a
    return-void
.end method

.method protected onHandleRealName(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->closeRealNameDialog()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->hasCheckRealName:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->checkRealName(I)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/papa91/arc/EmuActivity_psp;->hasCheckRealName:Z

    return-void
.end method

.method protected onHandlerResultNameResult(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->loginFinish()V

    return-void
.end method

.method public onHideMenu()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    sget-boolean v0, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->gameOnResume()V

    return v1

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/ppsspp/ppsspp/NativeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method onMessengerConnected(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->isTimerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->pauseTimer()V

    .line 4
    :cond_0
    invoke-virtual {p0, p0}, Lcom/papa91/arc/EmuActivity_psp;->gamePause(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->onResume()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->HttpPost_Memer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->isHideAdToday()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->isTimerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->isHideAdTimeView:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->resumeTimer()V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 8
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->needCheckRealName:Z

    if-eqz v0, :cond_2

    .line 9
    iget v0, p0, Lcom/papa91/arc/EmuActivity_psp;->checkRealNameType:I

    invoke-virtual {p0, v0}, Lcom/papa91/arc/EmuActivity_psp;->onHandleRealName(I)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->needCheckRealName:Z

    .line 11
    :cond_2
    invoke-virtual {p0, p0}, Lcom/papa91/arc/EmuActivity_psp;->gameResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    const-string v1, "jsonData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScreenShot()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/papa91/img/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareImagePath:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->saveScreenShot(Ljava/lang/String;)V

    return-void
.end method

.method public onTimerTick(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    invoke-virtual {v1, v0}, Lcom/papa91/wrapper/UserPrefs;->getSkipAd(Ljava/lang/String;)Z

    move-result v7

    .line 3
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    move-wide v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    invoke-virtual {v0, p1, p2}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->updateTickTime(J)V

    :cond_0
    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 6
    iget-boolean p1, p0, Lcom/papa91/arc/EmuActivity_psp;->adToastShowing:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/papa91/arc/EmuActivity_psp;->adToastShowing:Z

    const-string p1, "\u5373\u5c06\u8fdb\u5165\u5e7f\u544a\uff0c\u6e38\u620f\u5c06\u81ea\u52a8\u6682\u505c"

    .line 8
    invoke-static {p0, p1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/papa91/arc/EmuActivity_psp$21;

    invoke-direct {p2, p0}, Lcom/papa91/arc/EmuActivity_psp$21;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    const-wide/16 v0, 0xdac

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method onVipChanged()V
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->onVipChanged()V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->onVipChanged()V

    :cond_4
    return-void
.end method

.method public pauseGame()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pauseGame()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    return-void
.end method

.method public postCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp$2;-><init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SaveState::SUCCESS"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->bakState()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5b58\u6863\u4fdd\u5b58\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "SaveState::FAILURE"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5b58\u6863\u4fdd\u5b58\u5931\u8d25\uff01"

    .line 6
    invoke-static {p0, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "loadingFinished"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 8
    sput-boolean v1, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    .line 9
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->attachMenu()V

    .line 10
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 12
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 13
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->show()V

    .line 14
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->showAdCountDown()V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$3;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$3;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_3
    const-string v0, "showLastWindow"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    sget v0, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    if-ne v0, v1, :cond_4

    .line 18
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->show()V

    .line 20
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->popupMenu()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 21
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->show()V

    .line 23
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->showMenuPerformance()V

    :cond_6
    :goto_0
    const/4 v0, 0x0

    .line 24
    sput v0, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    goto :goto_1

    :cond_7
    const-string v0, "uistate"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ingame"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const-string v0, "wufan_reset"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz v0, :cond_c

    .line 28
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatReset()V

    goto :goto_1

    :cond_9
    const-string v0, "graphics_restart"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resumeGame()V

    goto :goto_1

    :cond_a
    const-string v0, "ScreenShot::SUCCESS"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareImagePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/papa91/arc/EmuActivity_psp;->showShare(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string v0, "ScreenShot::FAILURE"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 34
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    :cond_c
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/ppsspp/ppsspp/NativeActivity;->processCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public quickSlot()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->gameOnResume()V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$8;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$8;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public recreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->recreate()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->isRecreate:Z

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatReset()V

    :cond_0
    return-void
.end method

.method registerAdReceiver()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adResultReceiver:Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.emu.ad.result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->adResultReceiver:Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method registerLogin()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loginReceiver:Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufun.mha.broadcast.action_login_success"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->loginReceiver:Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method registerMyReceiver()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->myReceiver:Lcom/papa91/arc/EmuActivity_psp$MyReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->myReceiver:Lcom/papa91/arc/EmuActivity_psp$MyReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public reload()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->gameOnResume()V

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$9;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$9;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatReset()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    .line 7
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->emuRestart()V

    :cond_1
    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    return-void
.end method

.method renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 4
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method

.method public restoreAdData()V
    .locals 4

    const-string v0, "gameUrl"

    const-string v1, ""

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "jsonData"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 2
    :try_start_1
    new-instance v3, Lcom/papa91/arc/MyJson;

    invoke-direct {v3, v2}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V

    const-string v2, "dnsJson"

    .line 3
    invoke-virtual {v3, v2, v1}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->ad_host_url:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getAdRequestParam()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$11;

    invoke-direct {v1, p0, v0}, Lcom/papa91/arc/EmuActivity_psp$11;-><init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public restoreVipData()V
    .locals 2

    const-string v0, "http://anv9.ctapi.5fun.com/simulator/simulator_member_fun_type"

    .line 1
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->url:Ljava/lang/String;

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/simulator/simulator_member_fun_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getRequestParam()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$10;

    invoke-direct {v1, p0, v0}, Lcom/papa91/arc/EmuActivity_psp$10;-><init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public resumeGame()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resumeGame()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    return-void
.end method

.method public romPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    return-object v0
.end method

.method public saveBindsFileData()V
    .locals 0

    return-void
.end method

.method saveDataTransfer()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/papa91/psp/PSP/SAVEDATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/PSP/SAVEDATA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public saveGameConfig()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->saveGameConfig()V

    return-void
.end method

.method public saveSlotState(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismiss()V

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->saveState(Ljava/lang/String;)V

    return-void
.end method

.method public screenMode(I)V
    .locals 0

    return-void
.end method

.method public setAutoSlotStatus(I)V
    .locals 0

    return-void
.end method

.method public setSPBindData(III)V
    .locals 0

    return-void
.end method

.method public setSPMenuVisible(Z)V
    .locals 0

    return-void
.end method

.method showAdCountDown()V
    .locals 14

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    if-gtz v0, :cond_5

    sget-wide v0, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTimeSwitch:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0, v2, v3}, Lcom/papa91/arc/view/MenuView;->setTime(J)V

    .line 3
    sget-wide v0, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTime:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    add-long/2addr v0, v2

    .line 4
    iget-object v4, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    sget-object v5, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 6
    iget-object v5, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    invoke-virtual {v5, v4}, Lcom/papa91/wrapper/UserPrefs;->getLastTime(Ljava/lang/String;)J

    move-result-wide v5

    .line 7
    iget-object v7, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    invoke-virtual {v7, v4}, Lcom/papa91/wrapper/UserPrefs;->getSkipAd(Ljava/lang/String;)Z

    move-result v7

    .line 8
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "remainTime"

    .line 9
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 10
    iget-object v8, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    invoke-virtual {v8, v4}, Lcom/papa91/wrapper/UserPrefs;->getRemainTime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 12
    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    return-void

    .line 14
    :cond_2
    iget-object v8, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    sget-object v9, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v10, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const/4 v13, 0x0

    move-wide v11, v0

    invoke-virtual/range {v8 .. v13}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 15
    :cond_3
    div-long v2, v0, v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 17
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->showTimeLimitedDialog2()V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p0, Lcom/papa91/arc/EmuActivity_psp;->isHideAdTimeView:Z

    .line 19
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v2}, Lcom/papa91/arc/view/MenuView;->showTimer()V

    .line 20
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v2, v0, v1}, Lcom/papa91/arc/view/MenuView;->startTimer(J)V

    :goto_1
    return-void

    .line 21
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    return-void
.end method

.method public showAdVideo()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getVip()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    const-string v2, "PSP"

    invoke-interface {v0, p0, v1, v2}, Lcom/papa91/arc/CContext$IVideoAdListener;->showAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAdView()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/c;

    invoke-direct {v0, p0}, Lcom/papa91/arc/c;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showGGCodeButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMenuCheating()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->loadPspDBCheat()V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->show()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    return-void

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/VipBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public showMenuGate()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingGateDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingGateDialog;->show()V

    :cond_1
    return-void
.end method

.method public showMenuPerformance()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initTotalLevel()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getGameSettingTotalLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    const/4 v7, 0x1

    if-ne v6, v1, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->show([Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$7;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$7;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public showMenuSlot()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->setappContentUrl(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->show()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 10
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/VipBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method showNetworkFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 3
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$20;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$20;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->setOnTimeLimitedListener(Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->show()V

    const-string v0, "\u8bf7\u8054\u7f51\u7ee7\u7eed\u6e38\u620f\uff01"

    .line 6
    invoke-static {p0, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public showShare(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingShareDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingShareDialog;->setIamge(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$22;

    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/EmuActivity_psp$22;-><init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingShareDialog;->setShareListener(Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;)V

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    :cond_1
    return-void
.end method

.method public showTimeLimitedDialog1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initTimeLimitedDialog()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    invoke-virtual {v1, v0}, Lcom/papa91/wrapper/UserPrefs;->getRemainTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->show1()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->show2()V

    :goto_0
    return-void
.end method

.method public showTimeLimitedDialog2()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->showTimeLimitedDialog2:Z

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->showNetworkFailed()V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->startVideo()V

    return-void
.end method

.method public varargs showVip([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingVipDialog;->updateVipDatas(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingVipDialog;->show([Ljava/lang/String;)V

    return-void
.end method

.method public showVipTip()V
    .locals 11

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getCheatListData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getCheatListData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/PpssppActivity;->isShowOnekey()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->isShowGate()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->loadPspDBCheat()V

    .line 15
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getVip()I

    move-result v1

    if-gtz v1, :cond_8

    .line 16
    sget-object v1, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    if-eqz v1, :cond_3

    .line 17
    invoke-interface {v1}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorStartAdCount()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 18
    :goto_3
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_start_count"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showVipTip: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-----"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v1, :cond_7

    if-lt v2, v1, :cond_7

    .line 20
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_has_show_tip"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "_start_time"

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getDay()I

    move-result v9

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getDay()I

    move-result v8

    if-eq v1, v8, :cond_7

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_show_tip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v5

    const/4 v8, 0x3

    if-lt v1, v8, :cond_5

    const/4 v1, 0x0

    .line 22
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->getNextTip(Ljava/util/HashMap;I)I

    move-result v0

    if-eq v0, v10, :cond_6

    .line 23
    invoke-virtual {p0, v0, v4}, Lcom/papa91/arc/EmuActivity_psp;->showVipTip(II)V

    move v1, v0

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getDay()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    :cond_7
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    return-void
.end method

.method public showVipTip(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/papa91/arc/common/constants/StatIntents;->statShowVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$23;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$23;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->setNoTipListener(Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0, p1, p2}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->show(II)V

    :cond_1
    return-void
.end method

.method public startTimer()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timer:Ljava/util/Timer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$1;

    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$1;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timerTask:Ljava/util/TimerTask;

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->timerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    .line 6
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    return-void
.end method

.method stateTransfer()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/papa91/arc/EmuActivity_psp;->stateTransfer(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hasExternalPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "async cfg(oldVersion) src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/papa91/psp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dst="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method stateTransfer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/PSP/PPSSPP_STATE/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {v1, v3}, Lcom/papa91/arc/EmuActivity_psp;->getOStateFilter(Ljava/lang/String;)Ljava/io/FilenameFilter;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v5, ".+_([0-9]+)\\.ppst$"

    .line 13
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    .line 17
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state index is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ".ppst"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 23
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    cmp-long v12, v13, v15

    if-eqz v12, :cond_1

    .line 26
    invoke-virtual {v1, v7, v9}, Lcom/papa91/arc/EmuActivity_psp;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v7, v0}, Lcom/papa91/arc/EmuActivity_psp;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->timer:Ljava/util/Timer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->timerTask:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method syncState()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$12;

    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$12;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public ugcPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbindBridge()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Lcom/papa91/arc/EmuActivity_psp;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method unregisterAdReceiver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adResultReceiver:Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method unregisterLogin()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loginReceiver:Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method unregisterMyReceiver()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->myReceiver:Lcom/papa91/arc/EmuActivity_psp$MyReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->netWorkReceiver:Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public vibrate(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableHapticFeedback(Z)V

    return-void
.end method

.method public voice(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableSound(Z)V

    return-void
.end method
