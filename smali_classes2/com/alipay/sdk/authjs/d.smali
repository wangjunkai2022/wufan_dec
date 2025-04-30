.class public final Lcom/alipay/sdk/authjs/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/alipay/sdk/authjs/c;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/sdk/authjs/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/alipay/sdk/authjs/d;->a:Lcom/alipay/sdk/authjs/c;

    return-void
.end method

.method private static synthetic a(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)Lcom/alipay/sdk/authjs/a$a;
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->c:Ljava/lang/String;

    const-string v1, "toast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x9c4

    if-ge v0, v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/alipay/sdk/authjs/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/sdk/authjs/f;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    int-to-long p0, v2

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    sget-object p0, Lcom/alipay/sdk/authjs/a$a;->a:Lcom/alipay/sdk/authjs/a$a;

    return-object p0
.end method

.method private static synthetic b(Lcom/alipay/sdk/authjs/d;)Lcom/alipay/sdk/authjs/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/authjs/d;->a:Lcom/alipay/sdk/authjs/c;

    return-object p0
.end method

.method private static synthetic d(Lcom/alipay/sdk/authjs/d;Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/sdk/authjs/d;->g(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V

    return-void
.end method

.method private static e(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "clientId"

    .line 2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "param"

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_1
    const-string v2, "func"

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bundleName"

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v3, Lcom/alipay/sdk/authjs/a;

    const-string v4, "call"

    invoke-direct {v3, v4}, Lcom/alipay/sdk/authjs/a;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object v1, v3, Lcom/alipay/sdk/authjs/a;->b:Ljava/lang/String;

    .line 10
    iput-object v2, v3, Lcom/alipay/sdk/authjs/a;->c:Ljava/lang/String;

    .line 11
    iput-object v0, v3, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    .line 12
    iput-object p1, v3, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, v3}, Lcom/alipay/sdk/authjs/d;->c(Lcom/alipay/sdk/authjs/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-object v0, p1

    goto :goto_0

    :catch_1
    nop

    .line 14
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    :try_start_2
    sget-object p1, Lcom/alipay/sdk/authjs/a$a;->d:Lcom/alipay/sdk/authjs/a$a;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/sdk/authjs/d;->g(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    return-void
.end method

.method private h(Lcom/alipay/sdk/authjs/a;)Lcom/alipay/sdk/authjs/a$a;
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->c:Ljava/lang/String;

    const-string v1, "toast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x9c4

    if-ge v0, v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/alipay/sdk/authjs/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/sdk/authjs/f;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 3
    :cond_1
    sget-object p1, Lcom/alipay/sdk/authjs/a$a;->a:Lcom/alipay/sdk/authjs/a$a;

    return-object p1
.end method

.method private i(Lcom/alipay/sdk/authjs/a;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    const-string v1, "content"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x9c4

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 6
    new-instance v2, Lcom/alipay/sdk/authjs/f;

    invoke-direct {v2, p0, p1}, Lcom/alipay/sdk/authjs/f;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/alipay/sdk/authjs/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    sget-object v0, Lcom/alipay/sdk/authjs/a$a;->c:Lcom/alipay/sdk/authjs/a$a;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/sdk/authjs/d;->g(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/alipay/sdk/authjs/e;

    invoke-direct {v0, p0, p1}, Lcom/alipay/sdk/authjs/e;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    new-instance p2, Lcom/alipay/sdk/authjs/a;

    const-string v1, "callback"

    invoke-direct {p2, v1}, Lcom/alipay/sdk/authjs/a;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object v0, p2, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    .line 6
    iput-object p1, p2, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/alipay/sdk/authjs/d;->a:Lcom/alipay/sdk/authjs/c;

    invoke-interface {p1, p2}, Lcom/alipay/sdk/authjs/c;->a(Lcom/alipay/sdk/authjs/a;)V

    return-void
.end method
