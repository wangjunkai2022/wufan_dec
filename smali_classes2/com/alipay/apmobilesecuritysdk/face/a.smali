.class public final Lcom/alipay/apmobilesecuritysdk/face/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/face/a$b;,
        Lcom/alipay/apmobilesecuritysdk/face/a$a;,
        Lcom/alipay/apmobilesecuritysdk/face/a$c;
    }
.end annotation


# static fields
.field private static e:Lcom/alipay/apmobilesecuritysdk/face/a;

.field private static f:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private volatile b:Z

.field private c:Ljava/lang/Thread;

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alipay/apmobilesecuritysdk/face/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/a;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->b:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->d:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/a;
    .locals 2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/face/a;->e:Lcom/alipay/apmobilesecuritysdk/face/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-direct {v1, p0}, Lcom/alipay/apmobilesecuritysdk/face/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/face/a;->e:Lcom/alipay/apmobilesecuritysdk/face/a;

    :cond_0
    sget-object p0, Lcom/alipay/apmobilesecuritysdk/face/a;->e:Lcom/alipay/apmobilesecuritysdk/face/a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->d:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic e(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->b:Z

    return p1
.end method

.method private f()Lcom/alipay/apmobilesecuritysdk/face/a$c;
    .locals 2

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/a$c;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/face/a$c;-><init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$c;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$c;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method static synthetic g(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->c:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/alipay/apmobilesecuritysdk/face/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->b:Z

    return p0
.end method


# virtual methods
.method public final d(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "utdid"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tid"

    invoke-static {p1, v2, v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-static {p1, v3, v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://mobilegw.alipay.com/mgw.htm"

    invoke-static {v1}, Lcom/alipay/security/mobile/module/a/a/a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->d:Ljava/util/LinkedList;

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/face/a$b;

    invoke-direct {v3, p0, v0, v2, p1}, Lcom/alipay/apmobilesecuritysdk/face/a$b;-><init>(Lcom/alipay/apmobilesecuritysdk/face/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->c:Ljava/lang/Thread;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/b;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/face/b;-><init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->c:Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/c;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/face/c;-><init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->c:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
