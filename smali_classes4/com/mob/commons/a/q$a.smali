.class Lcom/mob/commons/a/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/mob/commons/a/q$a;


# instance fields
.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/commons/a/q$a;

    invoke-direct {v0}, Lcom/mob/commons/a/q$a;-><init>()V

    sput-object v0, Lcom/mob/commons/a/q$a;->a:Lcom/mob/commons/a/q$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mob/commons/a/q$a;->b:Landroid/content/BroadcastReceiver;

    .line 3
    :try_start_0
    new-instance v0, Lcom/mob/commons/a/q$a$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/q$a$1;-><init>(Lcom/mob/commons/a/q$a;)V

    iput-object v0, p0, Lcom/mob/commons/a/q$a;->b:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v1, v2, :cond_0

    .line 7
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "016DcgUh@eecdefEch cgfd$hVcf9h+cd3ihDcg"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mob/commons/a/q$a;->b:Landroid/content/BroadcastReceiver;

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/BroadcastReceiver;

    aput-object v5, v0, v4

    const-class v4, Landroid/content/IntentFilter;

    aput-object v4, v0, v3

    invoke-static {v1, v2, v6, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "016QcgJhUeecdefSchDcgfdShTcf%h:cdSihBcg"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mob/commons/a/q$a;->b:Landroid/content/BroadcastReceiver;

    aput-object v8, v7, v4

    aput-object v0, v7, v3

    const/4 v0, 0x4

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v5

    new-array v0, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v0, v4

    const-class v4, Landroid/content/IntentFilter;

    aput-object v4, v0, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v5

    .line 10
    invoke-static {v1, v2, v7, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static a()Lcom/mob/commons/a/q$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/a/q$a;->a:Lcom/mob/commons/a/q$a;

    return-object v0
.end method

.method static synthetic b()Lcom/mob/commons/a/q$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/a/q$a;->a:Lcom/mob/commons/a/q$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "networkInfo"

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v0

    const-wide/16 v1, 0x2

    const-class v3, Lcom/mob/commons/a/q;

    const/4 p2, 0x2

    new-array v4, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p2

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
