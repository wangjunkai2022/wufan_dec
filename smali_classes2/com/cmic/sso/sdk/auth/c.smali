.class public Lcom/cmic/sso/sdk/auth/c;
.super Ljava/lang/Object;
.source "AuthnHelperCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/auth/c$a;
    }
.end annotation


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "quick_login_android_5.9.1"

.field private static f:Lcom/cmic/sso/sdk/auth/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Lcom/cmic/sso/sdk/auth/a;

.field protected final b:Landroid/content/Context;

.field protected c:J

.field protected final d:Landroid/os/Handler;

.field protected e:Ljava/lang/String;

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f40

    .line 2
    iput-wide v0, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/c;->g:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/c;->d:Landroid/os/Handler;

    .line 6
    invoke-static {p1}, Lcom/cmic/sso/sdk/auth/a;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/c;->a:Lcom/cmic/sso/sdk/auth/a;

    .line 7
    invoke-static {p1}, Lcom/cmic/sso/sdk/e/r;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/e/r;

    .line 8
    invoke-static {p1}, Lcom/cmic/sso/sdk/e/k;->a(Landroid/content/Context;)V

    .line 9
    invoke-static {p1}, Lcom/cmic/sso/sdk/e/j;->a(Landroid/content/Context;)V

    .line 10
    new-instance p1, Lcom/cmic/sso/sdk/auth/c$1;

    invoke-direct {p1, p0}, Lcom/cmic/sso/sdk/auth/c$1;-><init>(Lcom/cmic/sso/sdk/auth/c;)V

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/n;->a(Lcom/cmic/sso/sdk/e/n$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/auth/c;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/c;->e:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cmic/sso/sdk/e/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthnHelperCore"

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AID"

    .line 4
    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/cmic/sso/sdk/auth/c$7;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/cmic/sso/sdk/auth/c$7;-><init>(Lcom/cmic/sso/sdk/auth/c;Ljava/lang/String;Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/n;->a(Lcom/cmic/sso/sdk/e/n$a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/auth/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cmic/sso/sdk/auth/c;->a()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/cmic/sso/sdk/auth/c;->f:Lcom/cmic/sso/sdk/auth/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/cmic/sso/sdk/auth/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/cmic/sso/sdk/auth/c;->f:Lcom/cmic/sso/sdk/auth/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/cmic/sso/sdk/auth/c;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/auth/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/cmic/sso/sdk/auth/c;->f:Lcom/cmic/sso/sdk/auth/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/cmic/sso/sdk/auth/c;->f:Lcom/cmic/sso/sdk/auth/c;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/c;
    .locals 2

    .line 7
    sget-object v0, Lcom/cmic/sso/sdk/auth/c;->f:Lcom/cmic/sso/sdk/auth/c;

    if-nez v0, :cond_1

    .line 8
    const-class v0, Lcom/cmic/sso/sdk/auth/c;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/cmic/sso/sdk/auth/c;->f:Lcom/cmic/sso/sdk/auth/c;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/cmic/sso/sdk/auth/c;

    invoke-direct {v1, p0, p1}, Lcom/cmic/sso/sdk/auth/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/cmic/sso/sdk/auth/c;->f:Lcom/cmic/sso/sdk/auth/c;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_0
    sget-object p0, Lcom/cmic/sso/sdk/auth/c;->f:Lcom/cmic/sso/sdk/auth/c;

    return-object p0
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cmic/sso/sdk/e/c;->a(Z)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;
    .locals 3

    .line 5
    new-instance v0, Lcom/cmic/sso/sdk/a;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/cmic/sso/sdk/a;-><init>(I)V

    .line 6
    invoke-static {}, Lcom/cmic/sso/sdk/e/q;->c()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/cmic/sso/sdk/d/b;

    invoke-direct {v2}, Lcom/cmic/sso/sdk/d/b;-><init>()V

    invoke-virtual {v0, v2}, Lcom/cmic/sso/sdk/a;->a(Lcom/cmic/sso/sdk/d/b;)V

    const-string v2, "traceId"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 10
    invoke-static {v1, p1}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    :cond_0
    return-object v0
.end method

.method protected a(Lcom/cmic/sso/sdk/a;)V
    .locals 4

    .line 11
    new-instance v0, Lcom/cmic/sso/sdk/auth/c$a;

    invoke-direct {v0, p0, p1}, Lcom/cmic/sso/sdk/auth/c$a;-><init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/a;)V

    .line 12
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->a:Lcom/cmic/sso/sdk/auth/a;

    new-instance v2, Lcom/cmic/sso/sdk/auth/c$5;

    invoke-direct {v2, p0, v0}, Lcom/cmic/sso/sdk/auth/c$5;-><init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/auth/c$a;)V

    invoke-virtual {v1, p1, v2}, Lcom/cmic/sso/sdk/auth/a;->a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V

    return-void
.end method

.method protected a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cmic/sso/sdk/auth/TokenListener;)Z
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmic/sso/sdk/a/c;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/c;->a()Lcom/cmic/sso/sdk/a/a;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->a(Lcom/cmic/sso/sdk/a/a;)V

    .line 16
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->e:Ljava/lang/String;

    const-string v2, "rsa2048"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "use2048PublicKey"

    invoke-virtual {p1, v2, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "systemStartTime"

    invoke-virtual {p1, v3, v1, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;J)V

    .line 18
    invoke-static {}, Lcom/cmic/sso/sdk/e/o;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "starttime"

    invoke-virtual {p1, v2, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "loginMethod"

    .line 19
    invoke-virtual {p1, v1, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "appkey"

    .line 20
    invoke-virtual {p1, p4, p3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "appid"

    .line 21
    invoke-virtual {p1, p4, p2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-wide v1, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const-string v1, "timeOut"

    invoke-virtual {p1, v1, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p4, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p4, v1}, Lcom/cmic/sso/sdk/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6709READ_PHONE_STATE\u6743\u9650\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthnHelperCore"

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hsaReadPhoneStatePermission"

    .line 25
    invoke-virtual {p1, v1, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    .line 26
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmic/sso/sdk/e/m;->a(Landroid/content/Context;)Z

    move-result v1

    .line 27
    invoke-static {}, Lcom/cmic/sso/sdk/b/a;->a()Lcom/cmic/sso/sdk/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, p4, v1}, Lcom/cmic/sso/sdk/b/a;->a(Landroid/content/Context;ZZ)V

    .line 28
    invoke-static {}, Lcom/cmic/sso/sdk/b/a;->a()Lcom/cmic/sso/sdk/b/a;

    move-result-object p4

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-virtual {p4, v2}, Lcom/cmic/sso/sdk/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    const-string v2, "networkClass"

    invoke-virtual {p1, v2, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object p4

    invoke-virtual {p4}, Lcom/cmic/sso/sdk/e/j;->b()Ljava/lang/String;

    move-result-object p4

    .line 30
    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/e/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cmic/sso/sdk/e/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "operator"

    .line 32
    invoke-virtual {p1, v4, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "operatortype"

    .line 33
    invoke-virtual {p1, v4, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "logintype"

    .line 34
    invoke-virtual {p1, v4, p5}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AuthnHelperCore"

    invoke-static {v5, v4}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u4f7f\u7528subId\u4f5c\u4e3a\u7f13\u5b58key = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AuthnHelperCore"

    invoke-static {v4, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scripType"

    const-string v4, "subid"

    .line 38
    invoke-virtual {p1, v2, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scripKey"

    .line 39
    invoke-virtual {p1, v2, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 41
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u4f7f\u7528operator\u4f5c\u4e3a\u7f13\u5b58key = "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v4, "AuthnHelperCore"

    invoke-static {v4, p4}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "scripType"

    const-string v4, "operator"

    .line 42
    invoke-virtual {p1, p4, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "scripKey"

    .line 43
    invoke-virtual {p1, p4, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {p4, v1}, Lcom/cmic/sso/sdk/e/m;->a(Landroid/content/Context;Z)I

    move-result p4

    const-string v2, "networktype"

    .line 45
    invoke-virtual {p1, v2, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 46
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "authType"

    invoke-virtual {p1, p3, p2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "200010"

    const-string/jumbo p3, "\u65e0\u6cd5\u8bc6\u522bsim\u5361\u6216\u6ca1\u6709sim\u5361"

    .line 47
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return v4

    :cond_2
    if-nez p6, :cond_3

    const-string p2, "102203"

    const-string p3, "listener\u4e0d\u80fd\u4e3a\u7a7a"

    .line 48
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return v4

    .line 49
    :cond_3
    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/a;->g()Z

    move-result p6

    if-eqz p6, :cond_4

    const-string p2, "200082"

    const-string/jumbo p3, "\u670d\u52a1\u5668\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 50
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return v4

    :cond_4
    if-nez p2, :cond_5

    const-string p2, ""

    goto :goto_1

    .line 51
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "102203"

    const-string p3, "appId \u4e0d\u80fd\u4e3a\u7a7a"

    .line 52
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return v4

    :cond_6
    if-nez p3, :cond_7

    const-string p2, ""

    goto :goto_2

    .line 53
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "102203"

    const-string p3, "appkey\u4e0d\u80fd\u4e3a\u7a7a"

    .line 54
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return v4

    :cond_8
    if-nez p4, :cond_9

    const-string p2, "102101"

    const-string/jumbo p3, "\u672a\u68c0\u6d4b\u5230\u7f51\u7edc"

    .line 55
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return v4

    :cond_9
    const-string p2, "2"

    .line 56
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/a;->f()Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "200082"

    const-string/jumbo p3, "\u670d\u52a1\u5668\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 57
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return v4

    :cond_a
    const-string p2, "3"

    .line 58
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/a;->e()Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "200082"

    const-string/jumbo p3, "\u670d\u52a1\u5668\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 59
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return v4

    .line 60
    :cond_b
    iget-object p2, p0, Lcom/cmic/sso/sdk/auth/c;->g:Ljava/lang/Object;

    monitor-enter p2

    .line 61
    :try_start_0
    invoke-static {p1}, Lcom/cmic/sso/sdk/e/h;->a(Lcom/cmic/sso/sdk/a;)Z

    move-result p3

    const/4 p6, 0x1

    if-eqz p3, :cond_d

    const-string v0, "securityphone"

    const-string v1, ""

    .line 62
    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "securityphone"

    .line 63
    invoke-virtual {p1, v1, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eq v0, p5, :cond_d

    .line 64
    iget-object p5, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {p5}, Lcom/cmic/sso/sdk/e/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "AuthnHelperCore"

    .line 65
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u89e3\u5bc6phoneScript "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, p6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "phonescrip"

    .line 67
    invoke-virtual {p1, v0, p5}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const/4 p3, 0x0

    .line 68
    :goto_3
    invoke-static {p6, v4}, Lcom/cmic/sso/sdk/e/h;->a(ZZ)V

    :cond_d
    const-string p5, "isCacheScrip"

    .line 69
    invoke-virtual {p1, p5, p3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p5, "AuthnHelperCore"

    .line 70
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCachePhoneScrip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, 0x2

    if-ne p4, p2, :cond_e

    if-nez p3, :cond_e

    const-string p2, "102103"

    const-string/jumbo p3, "\u65e0\u6570\u636e\u7f51\u7edc"

    .line 72
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return v4

    :cond_e
    return p6

    :catchall_0
    move-exception p1

    .line 73
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "traceId"

    .line 1
    invoke-virtual {p3, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKRequestCode"

    const/4 v2, -0x1

    .line 2
    invoke-virtual {p3, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;I)I

    move-result v1

    .line 3
    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 4
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->c(Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/TokenListener;

    move-result-object v2

    if-eqz p4, :cond_0

    const-string v3, "keepListener"

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p4, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->b(Ljava/lang/String;)V

    :cond_1
    if-nez v2, :cond_2

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "systemEndTime"

    .line 10
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p3, v0, v3, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "endtime"

    .line 11
    :try_start_3
    invoke-static {}, Lcom/cmic/sso/sdk/e/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "logintype"

    .line 12
    invoke-virtual {p3, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v0

    if-nez p4, :cond_3

    .line 13
    invoke-static {p1, p2}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 14
    invoke-static {p1, p3, p4}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {p1, p2, p3, p4}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    const-string p4, "scripExpiresIn"

    .line 16
    :try_start_4
    invoke-static {}, Lcom/cmic/sso/sdk/e/h;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object p4, p0, Lcom/cmic/sso/sdk/auth/c;->d:Landroid/os/Handler;

    new-instance v0, Lcom/cmic/sso/sdk/auth/c$6;

    invoke-direct {v0, p0, v2, v1, p2}, Lcom/cmic/sso/sdk/auth/c$6;-><init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/auth/TokenListener;ILorg/json/JSONObject;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    iget-object p2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/cmic/sso/sdk/a/c;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/a/c;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/cmic/sso/sdk/a/c;->a(Lcom/cmic/sso/sdk/a;)V

    .line 19
    invoke-virtual {p3}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a/a;->j()Z

    move-result p2

    if-nez p2, :cond_5

    .line 20
    invoke-virtual {p3}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object p2

    invoke-static {p2}, Lcom/cmic/sso/sdk/e/q;->a(Lcom/cmic/sso/sdk/a/a;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 21
    iget-object p2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-direct {p0, p2, p1, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    .line 22
    :cond_5
    invoke-static {}, Lcom/cmic/sso/sdk/e/e;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    iget-object p1, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/r;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/e/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/e/r;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 24
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method public delScrip()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0, v0}, Lcom/cmic/sso/sdk/e/h;->a(ZZ)V

    const-string v0, "AuthnHelperCore"

    const-string/jumbo v1, "\u5220\u9664scrip"

    .line 2
    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getNetworkType(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "AuthnHelperCore"

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmic/sso/sdk/e/m;->a(Landroid/content/Context;)Z

    move-result v2

    .line 3
    invoke-static {}, Lcom/cmic/sso/sdk/b/a;->a()Lcom/cmic/sso/sdk/b/a;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 4
    invoke-static {p1, v4}, Lcom/cmic/sso/sdk/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 5
    invoke-virtual {v3, p1, v4, v2}, Lcom/cmic/sso/sdk/b/a;->a(Landroid/content/Context;ZZ)V

    .line 6
    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/cmic/sso/sdk/e/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {p1, v2}, Lcom/cmic/sso/sdk/e/m;->a(Landroid/content/Context;Z)I

    move-result p1

    const-string v2, "operatortype"

    .line 8
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "networktype"

    .line 9
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7f51\u7edc\u7c7b\u578b: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8fd0\u8425\u5546\u7c7b\u578b: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    :try_start_2
    const-string p1, "errorDes"

    const-string/jumbo v0, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    .line 12
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;

    move-result-object v4

    .line 2
    new-instance v8, Lcom/cmic/sso/sdk/auth/c$4;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, v8

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/sso/sdk/auth/c$4;-><init>(Lcom/cmic/sso/sdk/auth/c;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    invoke-static {v8}, Lcom/cmic/sso/sdk/e/n;->a(Lcom/cmic/sso/sdk/e/n$a;)V

    return-void
.end method

.method public loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;

    move-result-object v4

    .line 2
    new-instance v8, Lcom/cmic/sso/sdk/auth/c$2;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, v8

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/sso/sdk/auth/c$2;-><init>(Lcom/cmic/sso/sdk/auth/c;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    invoke-static {v8}, Lcom/cmic/sso/sdk/e/n;->a(Lcom/cmic/sso/sdk/e/n$a;)V

    return-void
.end method

.method public mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;

    move-result-object v4

    .line 2
    new-instance v8, Lcom/cmic/sso/sdk/auth/c$3;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, v8

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/sso/sdk/auth/c$3;-><init>(Lcom/cmic/sso/sdk/auth/c;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    invoke-static {v8}, Lcom/cmic/sso/sdk/e/n;->a(Lcom/cmic/sso/sdk/e/n$a;)V

    return-void
.end method

.method public setOverTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    return-void
.end method
