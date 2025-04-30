.class public Lorg/repackage/com/vivo/identifier/c;
.super Ljava/lang/Object;
.source "IdentifierIdClient.java"


# static fields
.field private static A:Ljava/lang/String; = null

.field private static volatile B:Lorg/repackage/com/vivo/identifier/c; = null

.field private static volatile C:Lorg/repackage/com/vivo/identifier/b; = null

.field private static final a:Ljava/lang/String; = "VMS_IDLG_SDK_Client"

.field private static final b:Ljava/lang/String; = "content://com.vivo.vms.IdProvider/IdentifierId"

.field private static final c:Ljava/lang/String; = "persist.sys.identifierid.supported"

.field private static final d:Ljava/lang/String; = "appid"

.field private static final e:Ljava/lang/String; = "type"

.field private static final f:Ljava/lang/String; = "OAID"

.field private static final g:Ljava/lang/String; = "VAID"

.field private static final h:Ljava/lang/String; = "AAID"

.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x4

.field private static final m:I = 0xb

.field private static final n:I = 0x7d0

.field private static o:Landroid/content/Context;

.field private static p:Z

.field private static q:Lorg/repackage/com/vivo/identifier/d;

.field private static r:Lorg/repackage/com/vivo/identifier/d;

.field private static s:Lorg/repackage/com/vivo/identifier/d;

.field private static t:Ljava/lang/Object;

.field private static u:Landroid/os/HandlerThread;

.field private static v:Landroid/os/Handler;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/repackage/com/vivo/identifier/c;->t:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string p0, "unknown"

    aput-object p0, v2, v6

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p1
.end method

.method public static c(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/c;
    .locals 2

    .line 1
    const-class v0, Lorg/repackage/com/vivo/identifier/c;

    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->B:Lorg/repackage/com/vivo/identifier/c;

    if-nez v1, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lorg/repackage/com/vivo/identifier/c;->o:Landroid/content/Context;

    .line 4
    new-instance v1, Lorg/repackage/com/vivo/identifier/c;

    invoke-direct {v1}, Lorg/repackage/com/vivo/identifier/c;-><init>()V

    sput-object v1, Lorg/repackage/com/vivo/identifier/c;->B:Lorg/repackage/com/vivo/identifier/c;

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_0
    :goto_0
    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->C:Lorg/repackage/com/vivo/identifier/b;

    if-nez v1, :cond_1

    .line 7
    monitor-enter v0

    .line 8
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lorg/repackage/com/vivo/identifier/c;->o:Landroid/content/Context;

    .line 9
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->o()V

    .line 10
    new-instance p0, Lorg/repackage/com/vivo/identifier/b;

    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->o:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/repackage/com/vivo/identifier/b;-><init>(Landroid/content/Context;)V

    sput-object p0, Lorg/repackage/com/vivo/identifier/c;->C:Lorg/repackage/com/vivo/identifier/b;

    .line 11
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->l()V

    .line 12
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 13
    :cond_1
    :goto_1
    sget-object p0, Lorg/repackage/com/vivo/identifier/c;->B:Lorg/repackage/com/vivo/identifier/c;

    return-object p0
.end method

.method private static e(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lorg/repackage/com/vivo/identifier/d;

    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->B:Lorg/repackage/com/vivo/identifier/c;

    invoke-direct {p1, v2, v1, p2}, Lorg/repackage/com/vivo/identifier/d;-><init>(Lorg/repackage/com/vivo/identifier/c;ILjava/lang/String;)V

    sput-object p1, Lorg/repackage/com/vivo/identifier/c;->s:Lorg/repackage/com/vivo/identifier/d;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lorg/repackage/com/vivo/identifier/c;->s:Lorg/repackage/com/vivo/identifier/d;

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Lorg/repackage/com/vivo/identifier/d;

    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->B:Lorg/repackage/com/vivo/identifier/c;

    invoke-direct {p1, v2, v1, p2}, Lorg/repackage/com/vivo/identifier/d;-><init>(Lorg/repackage/com/vivo/identifier/c;ILjava/lang/String;)V

    sput-object p1, Lorg/repackage/com/vivo/identifier/c;->r:Lorg/repackage/com/vivo/identifier/d;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lorg/repackage/com/vivo/identifier/c;->r:Lorg/repackage/com/vivo/identifier/d;

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Lorg/repackage/com/vivo/identifier/d;

    sget-object p2, Lorg/repackage/com/vivo/identifier/c;->B:Lorg/repackage/com/vivo/identifier/c;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v2}, Lorg/repackage/com/vivo/identifier/d;-><init>(Lorg/repackage/com/vivo/identifier/c;ILjava/lang/String;)V

    sput-object p1, Lorg/repackage/com/vivo/identifier/c;->q:Lorg/repackage/com/vivo/identifier/d;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lorg/repackage/com/vivo/identifier/c;->q:Lorg/repackage/com/vivo/identifier/d;

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method private i(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->v:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    const-string p1, "appid"

    .line 5
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->v:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lorg/repackage/com/vivo/identifier/c;->w:Ljava/lang/String;

    return-object p0
.end method

.method public static l()V
    .locals 2

    const-string v0, "persist.sys.identifierid.supported"

    const-string v1, "0"

    .line 1
    invoke-static {v0, v1}, Lorg/repackage/com/vivo/identifier/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/repackage/com/vivo/identifier/c;->p:Z

    return-void
.end method

.method static synthetic m()Lorg/repackage/com/vivo/identifier/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->C:Lorg/repackage/com/vivo/identifier/b;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->t:Ljava/lang/Object;

    return-object v0
.end method

.method private static o()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SqlWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/repackage/com/vivo/identifier/c;->u:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Lorg/repackage/com/vivo/identifier/c$a;

    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->u:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/repackage/com/vivo/identifier/c$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/repackage/com/vivo/identifier/c;->v:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/repackage/com/vivo/identifier/c;->d(ILjava/lang/String;)V

    .line 4
    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->r:Lorg/repackage/com/vivo/identifier/d;

    if-nez v1, :cond_2

    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->y:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->o:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lorg/repackage/com/vivo/identifier/c;->e(Landroid/content/Context;ILjava/lang/String;)V

    .line 6
    :cond_2
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->y:Ljava/lang/String;

    return-object p1
.end method

.method public d(ILjava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/repackage/com/vivo/identifier/c;->i(ILjava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x7d0

    .line 4
    :try_start_1
    sget-object p2, Lorg/repackage/com/vivo/identifier/c;->t:Ljava/lang/Object;

    invoke-virtual {p2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    cmp-long p2, v5, v3

    if-gez p2, :cond_4

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 7
    :cond_0
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->w:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 8
    sput-object p1, Lorg/repackage/com/vivo/identifier/c;->z:Ljava/lang/String;

    .line 9
    sput-object p2, Lorg/repackage/com/vivo/identifier/c;->w:Ljava/lang/String;

    .line 10
    :cond_1
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->w:Ljava/lang/String;

    sput-object p1, Lorg/repackage/com/vivo/identifier/c;->A:Ljava/lang/String;

    .line 11
    sput-object p2, Lorg/repackage/com/vivo/identifier/c;->w:Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_2
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->w:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 13
    sput-object p1, Lorg/repackage/com/vivo/identifier/c;->y:Ljava/lang/String;

    .line 14
    sput-object p2, Lorg/repackage/com/vivo/identifier/c;->w:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_3
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->w:Ljava/lang/String;

    sput-object p1, Lorg/repackage/com/vivo/identifier/c;->x:Ljava/lang/String;

    .line 16
    sput-object p2, Lorg/repackage/com/vivo/identifier/c;->w:Ljava/lang/String;

    .line 17
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/repackage/com/vivo/identifier/c;->p:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/c;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->x:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/repackage/com/vivo/identifier/c;->d(ILjava/lang/String;)V

    .line 4
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->q:Lorg/repackage/com/vivo/identifier/d;

    if-nez v2, :cond_2

    .line 5
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->o:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lorg/repackage/com/vivo/identifier/c;->e(Landroid/content/Context;ILjava/lang/String;)V

    .line 6
    :cond_2
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->z:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/repackage/com/vivo/identifier/c;->d(ILjava/lang/String;)V

    .line 4
    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->s:Lorg/repackage/com/vivo/identifier/d;

    if-nez v1, :cond_2

    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->z:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->o:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lorg/repackage/com/vivo/identifier/c;->e(Landroid/content/Context;ILjava/lang/String;)V

    .line 6
    :cond_2
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->z:Ljava/lang/String;

    return-object p1
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/c;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/repackage/com/vivo/identifier/c;->d(ILjava/lang/String;)V

    .line 3
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->A:Ljava/lang/String;

    return-object v0
.end method
