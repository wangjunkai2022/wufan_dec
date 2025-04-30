.class public Lcom/cmic/sso/sdk/c/c/a;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# static fields
.field private static a:Lcom/cmic/sso/sdk/c/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmic/sso/sdk/c/c/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/cmic/sso/sdk/c/c/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/cmic/sso/sdk/c/c/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/cmic/sso/sdk/c/c/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/cmic/sso/sdk/c/c/a;

    invoke-direct {v1}, Lcom/cmic/sso/sdk/c/c/a;-><init>()V

    sput-object v1, Lcom/cmic/sso/sdk/c/c/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/cmic/sso/sdk/c/c/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    return-object v0
.end method

.method private a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/c/d;Lcom/cmic/sso/sdk/a;)V
    .locals 3

    .line 92
    new-instance v0, Lcom/cmic/sso/sdk/c/a/d;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/c/a/d;-><init>()V

    .line 93
    new-instance v1, Lcom/cmic/sso/sdk/c/a/c;

    invoke-direct {v1}, Lcom/cmic/sso/sdk/c/a/c;-><init>()V

    .line 94
    new-instance v2, Lcom/cmic/sso/sdk/c/a/a;

    invoke-direct {v2}, Lcom/cmic/sso/sdk/c/a/a;-><init>()V

    .line 95
    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/a/d;->a(Lcom/cmic/sso/sdk/c/a/b;)V

    .line 96
    invoke-virtual {v1, v2}, Lcom/cmic/sso/sdk/c/a/c;->a(Lcom/cmic/sso/sdk/c/a/b;)V

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/c/c/c;->a(J)V

    .line 98
    new-instance v1, Lcom/cmic/sso/sdk/c/c/a$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/cmic/sso/sdk/c/c/a$1;-><init>(Lcom/cmic/sso/sdk/c/c/a;Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/cmic/sso/sdk/c/a/d;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "networktype"

    .line 20
    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v1

    .line 21
    new-instance v2, Lcom/cmic/sso/sdk/c/b/h;

    invoke-direct {v2}, Lcom/cmic/sso/sdk/c/b/h;-><init>()V

    const-string v3, "1.0"

    .line 22
    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->b(Ljava/lang/String;)V

    const-string v3, "quick_login_android_5.9.1"

    .line 23
    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->c(Ljava/lang/String;)V

    const-string v3, "appid"

    .line 24
    invoke-virtual {v0, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->d(Ljava/lang/String;)V

    const-string v3, "operatortype"

    .line 25
    invoke-virtual {v0, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->e(Ljava/lang/String;)V

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->f(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/cmic/sso/sdk/e/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->g(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/cmic/sso/sdk/e/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->h(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/cmic/sso/sdk/e/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->i(Ljava/lang/String;)V

    const-string v3, "0"

    .line 30
    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->j(Ljava/lang/String;)V

    const-string v5, "2.0"

    .line 31
    invoke-virtual {v2, v5}, Lcom/cmic/sso/sdk/c/b/a;->k(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/cmic/sso/sdk/e/q;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/a;->l(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/cmic/sso/sdk/e/o;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/a;->m(Ljava/lang/String;)V

    const-string v6, "apppackage"

    .line 34
    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/a;->o(Ljava/lang/String;)V

    const-string v6, "appsign"

    .line 35
    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/a;->p(Ljava/lang/String;)V

    const-string v6, "AID"

    .line 36
    invoke-static {v6, v4}, Lcom/cmic/sso/sdk/e/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/h;->a_(Ljava/lang/String;)V

    const-string v4, "logintype"

    .line 37
    invoke-virtual {v0, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    const-string v4, "pre"

    .line 38
    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->s(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v6, "userCapaid"

    .line 39
    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/h;->w(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_1

    const-string v4, "200"

    .line 41
    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/h;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "50"

    .line 42
    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/h;->w(Ljava/lang/String;)V

    :goto_0
    const-string v4, "authz"

    .line 43
    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->s(Ljava/lang/String;)V

    :goto_1
    const-string v4, "scripAndTokenForHttps"

    .line 44
    invoke-static {v0, v4}, Lcom/cmic/sso/sdk/e/q;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object v4

    const-string v6, "isCacheScrip"

    const/4 v9, 0x0

    .line 46
    invoke-virtual {v0, v6, v9}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v6

    const-string v10, "defendEOF"

    const-string v11, "POST"

    const-string v12, "traceId"

    const-string v13, "/unisdk/rs/scripAndTokenForHttps"

    const-string v14, "https://"

    if-eqz v6, :cond_2

    .line 47
    invoke-static {v9}, Lcom/cmic/sso/sdk/e/p;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/c/b/a;->q(Ljava/lang/String;)V

    .line 48
    invoke-static {v9}, Lcom/cmic/sso/sdk/e/p;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/c/b/a;->r(Ljava/lang/String;)V

    const-string v1, "phonescrip"

    .line 49
    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/c/b/h;->v(Ljava/lang/String;)V

    const-string v1, "appkey"

    .line 50
    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/c/b/g;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/c/b/a;->n(Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v4, Lcom/cmic/sso/sdk/c/c/c;

    invoke-virtual {v0, v12}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v2, v11, v6}, Lcom/cmic/sso/sdk/c/c/c;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4, v10, v3}, Lcom/cmic/sso/sdk/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 54
    :cond_2
    new-instance v3, Lcom/cmic/sso/sdk/c/b/e;

    invoke-direct {v3}, Lcom/cmic/sso/sdk/c/b/e;-><init>()V

    .line 55
    sget-object v6, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/cmic/sso/sdk/c/b/e;->a([B)V

    .line 56
    sget-object v6, Lcom/cmic/sso/sdk/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/cmic/sso/sdk/c/b/e;->b([B)V

    .line 57
    invoke-virtual {v3, v2}, Lcom/cmic/sso/sdk/c/b/e;->a(Lcom/cmic/sso/sdk/c/b/a;)V

    .line 58
    invoke-virtual {v3, v9}, Lcom/cmic/sso/sdk/c/b/e;->a(Z)V

    .line 59
    invoke-virtual {v4}, Lcom/cmic/sso/sdk/a/a;->h()Z

    move-result v2

    const-string v6, "isCloseIpv4"

    invoke-virtual {v0, v6, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {v4}, Lcom/cmic/sso/sdk/a/a;->i()Z

    move-result v2

    const-string v6, "isCloseIpv6"

    invoke-virtual {v0, v6, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "use2048PublicKey"

    .line 62
    invoke-virtual {v0, v4, v9}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "BaseRequest"

    const-string/jumbo v6, "\u4f7f\u75282\u5bf9\u5e94\u7684\u7f16\u7801"

    .line 63
    invoke-static {v4, v6}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "2"

    .line 64
    invoke-virtual {v3, v4}, Lcom/cmic/sso/sdk/c/b/e;->b(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/cmic/sso/sdk/e/i;->a()Lcom/cmic/sso/sdk/e/i;

    move-result-object v4

    sget-object v6, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/cmic/sso/sdk/e/i;->b([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 66
    :cond_3
    invoke-static {}, Lcom/cmic/sso/sdk/e/i;->a()Lcom/cmic/sso/sdk/e/i;

    move-result-object v4

    sget-object v6, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/cmic/sso/sdk/e/i;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 67
    :goto_2
    invoke-virtual {v3, v4}, Lcom/cmic/sso/sdk/c/b/e;->c(Ljava/lang/String;)V

    .line 68
    new-instance v4, Lcom/cmic/sso/sdk/c/c/b;

    invoke-virtual {v0, v12}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v3, v11, v6}, Lcom/cmic/sso/sdk/c/c/b;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/e;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1"

    .line 69
    invoke-virtual {v4, v10, v2}, Lcom/cmic/sso/sdk/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "doNetworkSwitch"

    if-ne v1, v7, :cond_4

    .line 70
    invoke-virtual {v4, v8}, Lcom/cmic/sso/sdk/c/c/c;->a(Z)V

    .line 71
    invoke-virtual {v0, v2, v8}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {v4, v9}, Lcom/cmic/sso/sdk/c/c/c;->a(Z)V

    .line 73
    invoke-virtual {v0, v2, v9}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    :goto_3
    const-string v1, "interfaceVersion"

    .line 74
    invoke-virtual {v4, v1, v5}, Lcom/cmic/sso/sdk/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object/from16 v2, p2

    .line 75
    invoke-direct {p0, v4, v2, v0}, Lcom/cmic/sso/sdk/c/c/a;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/c/d;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V
    .locals 5

    .line 76
    new-instance v0, Lcom/cmic/sso/sdk/c/b/f;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/c/b/f;-><init>()V

    .line 77
    new-instance v1, Lcom/cmic/sso/sdk/c/b/f$a;

    invoke-direct {v1}, Lcom/cmic/sso/sdk/c/b/f$a;-><init>()V

    .line 78
    new-instance v2, Lcom/cmic/sso/sdk/c/b/f$b;

    invoke-direct {v2}, Lcom/cmic/sso/sdk/c/b/f$b;-><init>()V

    .line 79
    invoke-static {}, Lcom/cmic/sso/sdk/e/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/f$b;->e(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/cmic/sso/sdk/e/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/f$b;->f(Ljava/lang/String;)V

    const-string v3, "2.0"

    .line 81
    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/f$b;->b(Ljava/lang/String;)V

    const-string v3, "appid"

    const-string v4, ""

    .line 82
    invoke-virtual {p2, v3, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/f$b;->c(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/g;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/f$b;->d(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, p1}, Lcom/cmic/sso/sdk/c/b/f$a;->a(Lorg/json/JSONObject;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/b/f;->a(Lcom/cmic/sso/sdk/c/b/f$a;)V

    .line 86
    invoke-virtual {v0, v2}, Lcom/cmic/sso/sdk/c/b/f;->a(Lcom/cmic/sso/sdk/c/b/f$b;)V

    .line 87
    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object p1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/a/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/log/logReport"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v1, Lcom/cmic/sso/sdk/c/c/c;

    const-string v2, "traceId"

    .line 90
    invoke-virtual {p2, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v1, p1, v0, v3, v2}, Lcom/cmic/sso/sdk/c/c/c;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v1, p3, p2}, Lcom/cmic/sso/sdk/c/c/a;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/c/d;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public a(ZLcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V
    .locals 4

    .line 7
    new-instance v0, Lcom/cmic/sso/sdk/c/b/b;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/c/b/b;-><init>()V

    const-string v1, "1.0"

    .line 8
    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/b/b;->b(Ljava/lang/String;)V

    const-string v1, "Android"

    .line 9
    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/b/b;->c(Ljava/lang/String;)V

    const-string v1, "AID"

    const-string v2, ""

    .line 10
    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/b/b;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/b;->e(Ljava/lang/String;)V

    const-string p1, "quick_login_android_5.9.1"

    .line 12
    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/b;->f(Ljava/lang/String;)V

    const-string p1, "appid"

    .line 13
    invoke-virtual {p2, p1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/b;->g(Ljava/lang/String;)V

    const-string p1, "iYm0HAnkxQtpvN44"

    .line 14
    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/g;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/b;->h(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object p1

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/a/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/client/uniConfig"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v1, Lcom/cmic/sso/sdk/c/c/c;

    const-string v2, "traceId"

    .line 18
    invoke-virtual {p2, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v1, p1, v0, v3, v2}, Lcom/cmic/sso/sdk/c/c/c;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, v1, p3, p2}, Lcom/cmic/sso/sdk/c/c/a;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/c/d;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method
