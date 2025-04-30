.class public Lcom/umeng/umcrash/UMCrash;
.super Ljava/lang/Object;
.source "UMCrash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/umcrash/UMCrash$CrashClientImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE_CRASH_ALL:Z = true

.field private static final DEFAULT_VALUE_CRASH_ANR:Z = true

.field private static final DEFAULT_VALUE_CRASH_JAVA:Z = true

.field private static final DEFAULT_VALUE_CRASH_NATIVE:Z = true

.field private static final DEFAULT_VALUE_CRASH_UNEXP:Z = false

.field private static final DEFAULT_VALUE_LAUNCH:Z = true

.field private static final DEFAULT_VALUE_MEM:Z = true

.field private static final DEFAULT_VALUE_PA:Z = true

.field private static final KEY_ACTIITY_ON_CREATED:Ljava/lang/String; = "onCreated"

.field private static final KEY_ACTIITY_ON_DESTROYED:Ljava/lang/String; = "onDestroyed"

.field private static final KEY_ACTIITY_ON_PAUSED:Ljava/lang/String; = "onPaused"

.field private static final KEY_ACTIITY_ON_RESUMED:Ljava/lang/String; = "onResumed"

.field private static final KEY_ACTIITY_ON_STARTED:Ljava/lang/String; = "onStarted"

.field private static final KEY_ACTIITY_ON_STOPPED:Ljava/lang/String; = "onStopped"

.field public static final KEY_APM_DEFAULT_SECRET:Ljava/lang/String; = "NEej8y@anWa*8hep"

.field public static final KEY_APM_ROOT_NAME:Ljava/lang/String; = "UApm"

.field public static final KEY_CALLBACK_PAGE_ACTION:Ljava/lang/String; = "um_action_log"

.field public static final KEY_CALLBACK_UMID:Ljava/lang/String; = "um_umid"

.field private static final KEY_CALLBACK_USER_STRING:Ljava/lang/String; = "um_user_string"

.field public static final KEY_ENABLE_ANR:Ljava/lang/String; = "enableANRLog"

.field public static final KEY_ENABLE_CRASH_ALL:Ljava/lang/String; = "enableCrashLog"

.field public static final KEY_ENABLE_CRASH_JAVA:Ljava/lang/String; = "enableJavaLog"

.field public static final KEY_ENABLE_CRASH_NATIVE:Ljava/lang/String; = "enableNativeLog"

.field public static final KEY_ENABLE_CRASH_UNEXP:Ljava/lang/String; = "enableUnexpLog"

.field public static final KEY_ENABLE_LAUNCH:Ljava/lang/String; = "enableLaunchLog"

.field public static final KEY_ENABLE_MEM:Ljava/lang/String; = "enableMemLog"

.field public static final KEY_ENABLE_PA:Ljava/lang/String; = "enablePaLog"

.field public static final KEY_HEADER_ACCESS:Ljava/lang/String; = "um_access"

.field public static final KEY_HEADER_ACCESS_SUBTYPE:Ljava/lang/String; = "um_access_subtype"

.field public static final KEY_HEADER_APPKEY:Ljava/lang/String; = "um_app_key"

.field public static final KEY_HEADER_BESRIAL:Ljava/lang/String; = "um_bserial"

.field public static final KEY_HEADER_BSVER:Ljava/lang/String; = "um_bsver"

.field public static final KEY_HEADER_BVER:Ljava/lang/String; = "um_bver"

.field public static final KEY_HEADER_CARRIER:Ljava/lang/String; = "um_app_carrier"

.field public static final KEY_HEADER_CHANNEL:Ljava/lang/String; = "um_app_channel"

.field public static final KEY_HEADER_CRASH_VERSION:Ljava/lang/String; = "um_crash_sdk_version"

.field public static final KEY_HEADER_NETWORK_TYPE:Ljava/lang/String; = "um_network_type"

.field public static final KEY_HEADER_OS:Ljava/lang/String; = "um_os"

.field public static final KEY_HEADER_PROVIDER:Ljava/lang/String; = "um_app_provider"

.field public static final KEY_HEADER_PUID:Ljava/lang/String; = "um_app_puid"

.field public static final KEY_HEADER_START_TIME:Ljava/lang/String; = "um_app_start_time"

.field public static final KEY_HEADER_UMID:Ljava/lang/String; = "um_umid_header"

.field private static final KEY_MAX_LENGTH:I = 0x100

.field private static final KEY_MAX_LENGTH_128:I = 0x80

.field private static final TAG:Ljava/lang/String; = "UMCrash"

.field private static crashSdkVersion:Ljava/lang/String; = "1.4.0"

.field private static enableANRLog:Z = false

.field private static enableJavaLog:Z = false

.field private static enableLaunchLog:Z = false

.field private static enableMemLog:Z = false

.field private static enableNativeLog:Z = false

.field private static enablePaLog:Z = false

.field private static isDebug:Z = true

.field private static isEncrypt:Z = false

.field private static isIntl:Z = false

.field private static isLa:Z = false

.field private static isPA:Z = false

.field private static isZip:Z = true

.field private static mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

.field private static pageArrayLock:Ljava/lang/Object;

.field public static sReporter:Lcom/efs/sdk/base/EfsReporter;

.field private static userBesrial:Ljava/lang/String;

.field private static userBsver:Ljava/lang/String;

.field private static userBver:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/umcrash/UMCrash;->pageArrayLock:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isPA:Z

    .line 4
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isLa:Z

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    .line 6
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 7
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 8
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enablePaLog:Z

    .line 9
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableLaunchLog:Z

    .line 10
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableMemLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Lcom/umeng/umcrash/UMCrashCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/umeng/umcrash/UMCrash;->saveActivityState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enableANRLog(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    return-void
.end method

.method public static enableMemoryMonitor(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->setEnable(Z)V

    return-void
.end method

.method public static enableNativeLog(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    return-void
.end method

.method public static generateCustomLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "exception"

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Lcom/uc/crashsdk/export/CustomLogInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/uc/crashsdk/export/CustomLogInfo;-><init>(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "um_umid"

    .line 14
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "um_action_log"

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iput-object v2, v1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 17
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "k_ct"

    .line 18
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "k_ac"

    .line 19
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "\n"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception message:\nBack traces starts.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Back traces ends."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    :cond_2
    iput-object p1, v1, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    .line 27
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {p0, v1}, Lcom/uc/crashsdk/export/CrashApi;->generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_4
    :goto_1
    return-void
.end method

.method public static generateCustomLog(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;

    invoke-direct {v0, p1}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->stack(Ljava/lang/Throwable;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->build()Lcom/uc/crashsdk/export/CustomLogInfo;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "um_umid"

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "um_action_log"

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iput-object p1, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 9
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, p0}, Lcom/uc/crashsdk/export/CrashApi;->generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static getUMAPMFlag()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "version"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "crash"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "crashNative"

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    :goto_0
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "anr"

    if-eqz v1, :cond_1

    .line 8
    :try_start_2
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    :goto_1
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isPA:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "pa"

    if-eqz v1, :cond_2

    .line 11
    :try_start_3
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    :goto_2
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isLa:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "la"

    if-eqz v1, :cond_3

    .line 14
    :try_start_4
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    :goto_3
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->isEnable()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v4, "mem"

    if-eqz v1, :cond_4

    .line 17
    :try_start_5
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 19
    :catchall_0
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getUMID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-class v0, Lcom/umeng/umcrash/UMCrash;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "com.umeng.commonsdk.UMConfigure"

    .line 2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    const-string v5, "getUMIDString"

    new-array v6, v4, [Ljava/lang/Class;

    .line 3
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_1

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    .line 4
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, p0

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    .line 6
    :catch_2
    :cond_1
    :goto_3
    monitor-exit v0

    return-object v1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "2G/3G"

    const-string v1, "um_app_provider"

    const-string v2, "um_app_puid"

    const-string v3, ""

    if-eqz p0, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 1
    :cond_0
    sput-object p0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    .line 2
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "mDebug"

    .line 3
    sget-boolean v6, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "mEncryptLog"

    .line 4
    sget-boolean v6, Lcom/umeng/umcrash/UMCrash;->isEncrypt:Z

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "mZipLog"

    .line 5
    sget-boolean v6, Lcom/umeng/umcrash/UMCrash;->isZip:Z

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "enableJavaLog"

    .line 6
    sget-boolean v6, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "enableNativeLog"

    .line 7
    sget-boolean v6, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "enableANRLog"

    .line 8
    sget-boolean v6, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "enableUnexpLog"

    const/4 v6, 0x0

    .line 9
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "mIsInternational"

    .line 10
    sget-boolean v7, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    sget-boolean v5, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    new-instance v7, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;-><init>(Lcom/umeng/umcrash/UMCrash$1;)V

    invoke-static {p0, p1, v5, v4, v7}, Lcom/uc/crashsdk/export/CrashApi;->createInstanceEx(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/uc/crashsdk/export/ICrashClient;)Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v5, "um_app_key"

    .line 12
    invoke-virtual {v4, v5, p1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "um_app_channel"

    .line 13
    invoke-virtual {v4, v5, p2}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "um_os"

    const-string v7, "android"

    .line 14
    invoke-virtual {v4, v5, v7}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "um_crash_sdk_version"

    .line 15
    sget-object v7, Lcom/umeng/umcrash/UMCrash;->crashSdkVersion:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "um_umid_header"

    .line 16
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x1

    .line 17
    :try_start_1
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->getActiveUser(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 18
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 19
    aget-object v8, v7, v5

    invoke-virtual {v4, v2, v8}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    aget-object v7, v7, v6

    invoke-virtual {v4, v1, v7}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    :try_start_2
    invoke-virtual {v4, v2, v3}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, v1, v3}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v1, "um_app_carrier"

    .line 23
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "um_bver"

    .line 25
    sget-object v2, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_2
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "um_bsver"

    .line 27
    sget-object v2, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_3
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "um_bserial"

    .line 29
    sget-object v2, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    :cond_4
    :try_start_3
    invoke-static {p0}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wi-Fi"

    .line 31
    aget-object v7, v1, v6

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v7, "um_access"

    if-eqz v2, :cond_5

    :try_start_4
    const-string v0, "wifi"

    .line 32
    invoke-virtual {v4, v7, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_5
    aget-object v2, v1, v6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 34
    invoke-virtual {v4, v7, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "unknow"

    .line 35
    invoke-virtual {v4, v7, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_1
    aget-object v0, v1, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "um_access_subtype"

    .line 37
    aget-object v1, v1, v5

    invoke-virtual {v4, v0, v1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_7
    invoke-static {p0}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkTypeUmeng(Landroid/content/Context;)I

    move-result v0

    const-string v1, "um_network_type"

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 40
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :goto_2
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_8

    .line 42
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/umeng/umcrash/UMCrash$1;

    invoke-direct {v1}, Lcom/umeng/umcrash/UMCrash$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const v0, 0x100011

    const-string v1, "um_umid"

    .line 43
    invoke-virtual {v4, v1, v0}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    const-string v1, "um_action_log"

    .line 44
    invoke-virtual {v4, v1, v0}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 45
    :catchall_2
    :cond_8
    :try_start_6
    invoke-static {p0, p1, p2}, Lcom/umeng/umcrash/UMCrash;->initReporter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    :goto_3
    :try_start_7
    sget-boolean p1, Lcom/umeng/umcrash/UMCrash;->enablePaLog:Z

    if-eqz p1, :cond_9

    .line 48
    new-instance p1, Lcom/efs/sdk/pa/PAFactory$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/umeng/umcrash/UMCrash$2;

    invoke-direct {v0}, Lcom/umeng/umcrash/UMCrash$2;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/efs/sdk/pa/PAFactory$Builder;-><init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/IEfsReporter;)V

    .line 49
    sget-object p2, Lcom/efs/sdk/pa/config/PackageLevel;->RELEASE:Lcom/efs/sdk/pa/config/PackageLevel;

    invoke-virtual {p1, p2}, Lcom/efs/sdk/pa/PAFactory$Builder;->packageLevel(Lcom/efs/sdk/pa/config/PackageLevel;)Lcom/efs/sdk/pa/PAFactory$Builder;

    .line 50
    invoke-virtual {p1}, Lcom/efs/sdk/pa/PAFactory$Builder;->build()Lcom/efs/sdk/pa/PAFactory;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/efs/sdk/pa/PAFactory;->getPaInstance()Lcom/efs/sdk/pa/PA;

    move-result-object p2

    invoke-interface {p2}, Lcom/efs/sdk/pa/PA;->start()V

    .line 52
    invoke-virtual {p1}, Lcom/efs/sdk/pa/PAFactory;->getConfigManager()Lcom/efs/sdk/pa/config/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/efs/sdk/pa/config/ConfigManager;->enableTracer()Z

    move-result p1

    sput-boolean p1, Lcom/umeng/umcrash/UMCrash;->isPA:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :cond_9
    :goto_4
    :try_start_8
    sget-boolean p1, Lcom/umeng/umcrash/UMCrash;->enableLaunchLog:Z

    if-eqz p1, :cond_b

    .line 55
    sget-object p1, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    invoke-static {p0, p1}, Lcom/efs/sdk/launch/LaunchManager;->init(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 56
    :try_start_9
    invoke-static {}, Lcom/efs/sdk/launch/LaunchManager;->getLaunchConfigManager()Lcom/efs/sdk/launch/LaunchConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/efs/sdk/launch/LaunchConfigManager;->enableTracer()Z

    move-result p1

    sput-boolean p1, Lcom/umeng/umcrash/UMCrash;->isLa:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p1

    .line 57
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    :goto_5
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 60
    :cond_a
    sget-boolean p1, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 61
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    const-string p2, "umid"

    new-instance v0, Lcom/umeng/umcrash/UMCrash$3;

    invoke-direct {v0, p0}, Lcom/umeng/umcrash/UMCrash$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    :cond_b
    :goto_6
    :try_start_b
    sget-boolean p1, Lcom/umeng/umcrash/UMCrash;->enableMemLog:Z

    if-eqz p1, :cond_c

    .line 64
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    move-result-object p1

    sget-object p2, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    invoke-interface {p1, p0, p2}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->start(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_7
    return-void
.end method

.method public static initConfig(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p0, :cond_7

    const-string v0, "enableJavaLog"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    goto :goto_0

    .line 3
    :cond_0
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    :goto_0
    const-string v0, "enableNativeLog"

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    goto :goto_1

    .line 6
    :cond_1
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    :goto_1
    const-string v0, "enableCrashLog"

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    .line 9
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    goto :goto_2

    .line 10
    :cond_2
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    .line 11
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    :goto_2
    const-string v0, "enableANRLog"

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    goto :goto_3

    .line 14
    :cond_3
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    :goto_3
    const-string v0, "enablePaLog"

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enablePaLog:Z

    goto :goto_4

    .line 17
    :cond_4
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enablePaLog:Z

    :goto_4
    const-string v0, "enableLaunchLog"

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableLaunchLog:Z

    goto :goto_5

    .line 20
    :cond_5
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableLaunchLog:Z

    :goto_5
    const-string v0, "enableMemLog"

    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 22
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableMemLog:Z

    goto :goto_6

    .line 23
    :cond_6
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableMemLog:Z

    :cond_7
    :goto_6
    return-void
.end method

.method private static initReporter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "um_app_provider"

    const-string v1, "um_app_puid"

    .line 1
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "um_umid_header"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "um_app_channel"

    .line 3
    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "um_app_carrier"

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "um_os"

    const-string v4, "android"

    .line 5
    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p2, Lcom/umeng/umcrash/UMCrash;->crashSdkVersion:Ljava/lang/String;

    const-string v4, "um_crash_sdk_version"

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->getActiveUser(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 8
    array-length v4, p2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 9
    aget-object v3, p2, v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 10
    aget-object p2, p2, v3

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p2, ""

    .line 11
    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    :goto_0
    sget-object p2, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    sget-object p2, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    const-string v0, "um_bver"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    sget-object p2, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 16
    sget-object p2, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    const-string v0, "um_bsver"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_2
    sget-object p2, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 18
    sget-object p2, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    const-string v0, "um_bserial"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_3
    new-instance p2, Lcom/efs/sdk/base/EfsReporter$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "NEej8y@anWa*8hep"

    invoke-direct {p2, p0, p1, v0}, Lcom/efs/sdk/base/EfsReporter$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 20
    invoke-virtual {p2, p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->debug(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object p0

    const-string p1, "UApm"

    .line 21
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->efsDirRootName(Ljava/lang/String;)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object p0

    sget-boolean p1, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 22
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->printLogDetail(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object p0

    sget-boolean p1, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 23
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->intl(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->build()Lcom/efs/sdk/base/EfsReporter;

    move-result-object p0

    sput-object p0, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 25
    invoke-virtual {p0, v2}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V

    return-void
.end method

.method public static registerUMCrashCallback(Lcom/umeng/umcrash/UMCrashCallback;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Lcom/umeng/umcrash/UMCrash;->mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

    .line 2
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p0

    if-eqz p0, :cond_0

    const p0, 0x100011

    .line 3
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const-string v1, "um_user_string"

    invoke-virtual {v0, v1, p0}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    :cond_0
    return-void
.end method

.method private static saveActivityState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "-"

    .line 1
    :try_start_0
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    :cond_0
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x80

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_0

    .line 3
    invoke-static {p0, v1}, Lcom/umeng/umcrash/UMCrashUtils;->splitByByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_0
    sput-object p0, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 6
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    if-le p0, v1, :cond_2

    .line 8
    invoke-static {p1, v1}, Lcom/umeng/umcrash/UMCrashUtils;->splitByByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_2
    sput-object p1, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    goto :goto_1

    .line 10
    :cond_3
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 11
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    if-le p0, v1, :cond_4

    .line 13
    invoke-static {p2, v1}, Lcom/umeng/umcrash/UMCrashUtils;->splitByByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_4
    sput-object p2, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    goto :goto_2

    .line 15
    :cond_5
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 16
    :goto_2
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "um_bserial"

    const-string p2, "um_bsver"

    const-string v0, "um_bver"

    if-eqz p0, :cond_8

    .line 17
    :try_start_1
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 18
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_6
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 20
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_7
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 22
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_8
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 24
    :cond_9
    :goto_3
    new-instance p0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 25
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 26
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_a
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 28
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_b
    sget-object p2, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 30
    sget-object p2, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_c
    sget-object p1, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    if-eqz p1, :cond_d

    .line 32
    invoke-virtual {p1, p0}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_4
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 2
    sput-boolean p0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    return-void
.end method

.method private static useIntlServices(Z)V
    .locals 1

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 2
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "useIntlServices is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
