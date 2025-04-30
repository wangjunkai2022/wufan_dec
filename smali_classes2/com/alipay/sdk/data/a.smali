.class public final Lcom/alipay/sdk/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0xdac

.field public static final d:Ljava/lang/String; = "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

.field public static final e:I = 0x3e8

.field public static final f:I = 0x4e20

.field public static final g:Ljava/lang/String; = "alipay_cashier_dynamic_config"

.field public static final h:Ljava/lang/String; = "timeout"

.field public static final i:Ljava/lang/String; = "st_sdk_config"

.field public static final j:Ljava/lang/String; = "tbreturl"

.field private static k:Lcom/alipay/sdk/data/a;


# instance fields
.field private a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xdac

    .line 2
    iput v0, p0, Lcom/alipay/sdk/data/a;->a:I

    const-string v0, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    .line 3
    iput-object v0, p0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    return-void
.end method

.method private static synthetic c(Lcom/alipay/sdk/data/a;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "timeout"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tbreturl"

    iget-object p0, p0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object p0

    iget-object p0, p0, Lm/b;->a:Landroid/content/Context;

    const-string v1, "alipay_cashier_dynamic_config"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/alipay/sdk/util/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic d(Lcom/alipay/sdk/data/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/sdk/data/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static f()Lcom/alipay/sdk/data/a;
    .locals 3

    .line 1
    sget-object v0, Lcom/alipay/sdk/data/a;->k:Lcom/alipay/sdk/data/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/alipay/sdk/data/a;

    invoke-direct {v0}, Lcom/alipay/sdk/data/a;-><init>()V

    .line 3
    sput-object v0, Lcom/alipay/sdk/data/a;->k:Lcom/alipay/sdk/data/a;

    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v1

    iget-object v1, v1, Lm/b;->a:Landroid/content/Context;

    const-string v2, "alipay_cashier_dynamic_config"

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/a;->e(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/alipay/sdk/data/a;->k:Lcom/alipay/sdk/data/a;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 1
    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v0

    iget-object v0, v0, Lm/b;->a:Landroid/content/Context;

    const-string v1, "alipay_cashier_dynamic_config"

    .line 2
    invoke-static {v0, v1}, Lcom/alipay/sdk/util/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/alipay/sdk/data/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "timeout"

    .line 2
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tbreturl"

    .line 3
    iget-object v2, p0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v1

    iget-object v1, v1, Lm/b;->a:Landroid/content/Context;

    const-string v2, "alipay_cashier_dynamic_config"

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/util/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/alipay/sdk/data/a;->a:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x4e20

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/alipay/sdk/data/a;->a:I

    return v0

    :cond_1
    :goto_0
    const/16 v0, 0xdac

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/sdk/data/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/sdk/data/b;-><init>(Lcom/alipay/sdk/data/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "st_sdk_config"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "timeout"

    const/16 v1, 0xdac

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/sdk/data/a;->a:I

    const-string v0, "tbreturl"

    const-string v1, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    .line 5
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
