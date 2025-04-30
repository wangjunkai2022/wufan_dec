.class public Lcom/cmic/sso/sdk/auth/a;
.super Ljava/lang/Object;
.source "AuthnBusiness.java"


# static fields
.field private static c:Lcom/cmic/sso/sdk/auth/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/cmic/sso/sdk/c/c/a;

.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/cmic/sso/sdk/c/c/a;->a()Lcom/cmic/sso/sdk/c/c/a;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/a;
    .locals 2

    .line 2
    sget-object v0, Lcom/cmic/sso/sdk/auth/a;->c:Lcom/cmic/sso/sdk/auth/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/cmic/sso/sdk/auth/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/cmic/sso/sdk/auth/a;->c:Lcom/cmic/sso/sdk/auth/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/cmic/sso/sdk/auth/a;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/auth/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/cmic/sso/sdk/auth/a;->c:Lcom/cmic/sso/sdk/auth/a;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/cmic/sso/sdk/auth/a;->c:Lcom/cmic/sso/sdk/auth/a;

    return-object p0
.end method

.method private a(Lcom/cmic/sso/sdk/a;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/l;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/cmic/sso/sdk/e/d;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apppackage"

    .line 19
    invoke-virtual {p1, v2, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appsign"

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v0, p5

    const-string v5, "openId"

    const-string v6, "phonescrip"

    const-string v7, "securityphone"

    const-string v8, "103000"

    .line 21
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "true"

    const/4 v10, 0x3

    const-string v11, "logintype"

    if-eqz v8, :cond_4

    const-string v8, "resultdata"

    .line 22
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 24
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v12, Lcom/cmic/sso/sdk/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v0, v8, v12}, Lcom/cmic/sso/sdk/e/a;->b([BLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v8, 0x0

    .line 26
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 27
    :try_start_1
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 28
    :try_start_2
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 29
    :try_start_3
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pcid"

    .line 31
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    :cond_1
    invoke-static {v7, v14}, Lcom/cmic/sso/sdk/e/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v14

    move-object v14, v13

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v19, v13

    move-object v13, v0

    move-object v0, v8

    move-object/from16 v8, v19

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v14, v8

    move-object v8, v13

    move-object v13, v0

    move-object v0, v14

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v13, v0

    move-object v0, v8

    move-object v14, v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v13, v0

    move-object v0, v8

    move-object v12, v0

    move-object v14, v12

    .line 33
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v19, v8

    move-object v8, v0

    move-object v0, v14

    move-object/from16 v14, v19

    .line 34
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "securityPhone  = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "AuthnBusiness"

    invoke-static {v15, v13}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v5, v8}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v6, v14}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v7, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_3

    move-object/from16 v5, p0

    .line 38
    iget-object v13, v5, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    const-string v6, "scripExpiresIn"

    const-string v7, "0"

    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v6, "scripKey"

    const-string v7, ""

    .line 39
    invoke-virtual {v1, v6, v7}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v6, "scripType"

    .line 40
    invoke-virtual {v1, v6, v7}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 41
    invoke-static/range {v13 .. v18}, Lcom/cmic/sso/sdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v11}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 43
    invoke-static {v0}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    invoke-interface {v2, v3, v9, v1, v0}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 45
    :cond_2
    invoke-interface {v2, v3, v4, v1, v12}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_3
    move-object/from16 v5, p0

    const-string/jumbo v0, "\u8fd4\u56de103000\uff0c\u4f46\u662f\u6570\u636e\u89e3\u6790\u51fa\u9519"

    .line 46
    invoke-static {v15, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x18f4f

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4, v1, v3}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void

    :cond_4
    move-object/from16 v5, p0

    .line 49
    invoke-virtual {v1, v11}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 50
    invoke-static/range {p3 .. p4}, Lcom/cmic/sso/sdk/auth/d;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    invoke-interface {v2, v3, v9, v1, v0}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 52
    :cond_5
    invoke-interface {v2, v3, v4, v1, v0}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/auth/a;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/cmic/sso/sdk/auth/a;->a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lcom/cmic/sso/sdk/a;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [B

    const-string v2, "use2048PublicKey"

    .line 10
    invoke-virtual {p1, v2, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "AuthnBusiness"

    if-eqz v2, :cond_0

    const-string/jumbo v0, "\u4f7f\u75282048\u516c\u94a5\u5bf9\u5e94\u7684\u5bf9\u79f0\u79d8\u94a5\u751f\u6210\u65b9\u5f0f"

    .line 11
    invoke-static {v3, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/cmic/sso/sdk/e/a;->a()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\u4f7f\u75281024\u516c\u94a5\u5bf9\u5e94\u7684\u5bf9\u79f0\u79d8\u94a5\u751f\u6210\u65b9\u5f0f"

    .line 13
    invoke-static {v3, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_0
    invoke-static {}, Lcom/cmic/sso/sdk/e/a;->a()[B

    move-result-object v0

    .line 17
    sget-object v2, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;[B)V

    .line 18
    sget-object v1, Lcom/cmic/sso/sdk/b$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;[B)V

    const-string v0, "authType"

    const-string v1, "3"

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V
    .locals 3

    const-string v0, "AuthnBusiness"

    const-string v1, "LoginCheck method start"

    .line 8
    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "logintype"

    .line 9
    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v0

    const-string v1, "isCacheScrip"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "securityphone"

    const-string v2, ""

    .line 11
    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 12
    invoke-static {v1}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "103000"

    const-string v2, "true"

    .line 13
    invoke-interface {p2, v1, v2, p1, v0}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cmic/sso/sdk/auth/a;->b(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V

    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cmic/sso/sdk/auth/a;->b(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V

    return-void
.end method

.method public b(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V
    .locals 4

    const-string v0, "AuthnBusiness"

    const-string v1, "getScripAndToken start"

    .line 1
    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/auth/a;->a(Lcom/cmic/sso/sdk/a;)V

    const-string v0, "isCacheScrip"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/auth/a;->b(Lcom/cmic/sso/sdk/a;)V

    :cond_0
    const-string v0, "logintype"

    .line 5
    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "userCapaid"

    if-ne v1, v2, :cond_1

    const-string v0, "200"

    .line 6
    invoke-virtual {p1, v3, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "50"

    .line 8
    invoke-virtual {p1, v3, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    new-instance v1, Lcom/cmic/sso/sdk/auth/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cmic/sso/sdk/auth/a$1;-><init>(Lcom/cmic/sso/sdk/auth/a;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/cmic/sso/sdk/c/c/a;->a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V

    return-void
.end method
