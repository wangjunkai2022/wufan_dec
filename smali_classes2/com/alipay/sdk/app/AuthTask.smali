.class public Lcom/alipay/sdk/app/AuthTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:I = 0x49

.field static final d:Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/sdk/widget/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/sdk/util/f;

    sput-object v0, Lcom/alipay/sdk/app/AuthTask;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    .line 3
    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    invoke-virtual {v0, v1}, Lm/b;->c(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;)V

    .line 5
    new-instance v0, Lcom/alipay/sdk/widget/a;

    const-string/jumbo v1, "\u53bb\u652f\u4ed8\u5b9d\u6388\u6743"

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Lcom/alipay/sdk/widget/a;

    return-void
.end method

.method private a()Lcom/alipay/sdk/util/f$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/alipay/sdk/app/a;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    return-object v0
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lm/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lm/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lm/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p1}, Lcom/alipay/sdk/app/AuthTask;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcom/alipay/sdk/util/f;

    new-instance v1, Lcom/alipay/sdk/app/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/util/f;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/util/f$a;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/alipay/sdk/util/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed"

    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->f(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->f(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/alipay/sdk/protocol/b;->c:[Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 3
    aget-object p1, p1, v1

    const-string v1, "url"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    const-class v2, Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    sget-object p1, Lcom/alipay/sdk/app/AuthTask;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p1

    .line 11
    sget-object p1, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 14
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 15
    :goto_0
    monitor-exit p1

    throw v0
.end method

.method static synthetic d(Lcom/alipay/sdk/app/AuthTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    return-void
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.eg.android.AlipayGphone"

    const/16 v2, 0x80

    .line 2
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x49

    if-ge p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private f(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->g()V

    .line 2
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/packet/impl/a;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/a;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/alipay/sdk/packet/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/b;->a()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "form"

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "onload"

    .line 6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/alipay/sdk/protocol/b;->b(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    iget-object v0, v0, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    sget-object v1, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    if-ne v0, v1, :cond_0

    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/sdk/protocol/b;

    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/AuthTask;->c(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    return-object p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "biz"

    const-string v0, "H5AuthDataAnalysisError"

    .line 13
    invoke-static {p2, v0, p1}, Lcom/alipay/sdk/app/statistic/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    :try_start_2
    sget-object p2, Lcom/alipay/sdk/app/i;->d:Lcom/alipay/sdk/app/i;

    invoke-virtual {p2}, Lcom/alipay/sdk/app/i;->a()I

    move-result p2

    invoke-static {p2}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object p2

    const-string v0, "net"

    .line 16
    invoke-static {v0, p1}, Lcom/alipay/sdk/app/statistic/a;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    move-object p1, p2

    :goto_1
    if-nez p1, :cond_2

    .line 18
    sget-object p1, Lcom/alipay/sdk/app/i;->b:Lcom/alipay/sdk/app/i;

    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->a()I

    move-result p1

    invoke-static {p1}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object p1

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->a()I

    move-result p2

    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p2, p1, v0}, Lcom/alipay/sdk/app/h;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 20
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->f()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized auth(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->g()V

    .line 2
    :cond_0
    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object p2

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    invoke-virtual {p2, v0}, Lm/b;->c(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    new-instance v1, Lm/a;

    invoke-direct {v1, v0}, Lm/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lm/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/sdk/app/AuthTask;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/alipay/sdk/util/f;

    new-instance v3, Lcom/alipay/sdk/app/a;

    invoke-direct {v3, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    invoke-direct {v2, v0, v3}, Lcom/alipay/sdk/util/f;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/util/f$a;)V

    invoke-virtual {v2, v1}, Lcom/alipay/sdk/util/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/alipay/sdk/app/AuthTask;->f(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/a;->b(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 7
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    :goto_1
    invoke-static {v0, p1}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 8
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/a;->b(Landroid/content/Context;)V

    .line 9
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 10
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    throw p2

    .line 11
    :catch_0
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/a;->b(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->h()V

    .line 13
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->a:Landroid/app/Activity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 14
    :goto_2
    monitor-exit p0

    return-object p2

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
