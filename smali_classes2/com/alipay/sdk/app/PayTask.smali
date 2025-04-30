.class public Lcom/alipay/sdk/app/PayTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/PayTask$a;
    }
.end annotation


# static fields
.field static final g:Ljava/lang/Object;

.field private static h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/sdk/widget/a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/PayTask$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/sdk/util/f;

    sput-object v0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/sdk/app/PayTask;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "wappaygw.alipay.com/service/rest.htm"

    .line 2
    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v0, "mclient.alipay.com/service/rest.htm"

    .line 3
    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    const-string v0, "mclient.alipay.com/home/exterfaceAssign.htm"

    .line 4
    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    .line 7
    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    invoke-virtual {v0, v1}, Lm/b;->c(Landroid/content/Context;)V

    .line 8
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;)V

    .line 9
    new-instance v0, Lcom/alipay/sdk/widget/a;

    const-string/jumbo v1, "\u53bb\u652f\u4ed8\u5b9d\u4ed8\u6b3e"

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Lcom/alipay/sdk/widget/a;

    return-void
.end method

.method private a()Lcom/alipay/sdk/util/f$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/alipay/sdk/app/g;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/g;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    return-object v0
.end method

.method private b(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/alipay/sdk/protocol/b;->c:[Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-class v2, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 4
    aget-object v2, p1, v2

    const-string v3, "url"

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 7
    aget-object p1, p1, v2

    const-string v2, "cookie"

    .line 8
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    iget-object p1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    sget-object p1, Lcom/alipay/sdk/app/PayTask;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p1

    .line 14
    sget-object p1, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 17
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 18
    :goto_0
    monitor-exit p1

    throw v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alipay_exterface_invoke_assign_sign"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "alipay_exterface_invoke_assign_sign="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    .line 4
    invoke-static {v1, v2, p0}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdk_start_time\\\":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\\\""

    .line 6
    invoke-static {v2, v3, p0}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 7
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "={"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    const-string/jumbo p1, "}"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/alipay/sdk/app/PayTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->j()V

    return-void
.end method

.method private static varargs f(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    array-length v0, p5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p5, v2

    .line 2
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p4, ""

    .line 4
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_2

    if-eqz p1, :cond_4

    return v1

    :cond_2
    const-string p1, "\""

    const-string p5, "=\""

    if-eqz p0, :cond_3

    const-string p0, "&"

    .line 5
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alipay_exterface_invoke_assign_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "alipay_exterface_invoke_assign_sign="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "alipay_exterface_invoke_assign_sign="

    const-string v2, "&"

    invoke-static {v1, v2, p1}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdk_start_time\\\":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "sdk_start_time\\\":"

    const-string v3, "\\\""

    invoke-static {v2, v3, p1}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 2
    :goto_0
    new-instance v1, Lm/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lm/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lm/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->h:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v2, Lcom/alipay/sdk/app/PayTask;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    sget-object p1, Lcom/alipay/sdk/app/i;->f:Lcom/alipay/sdk/app/i;

    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->a()I

    move-result p1

    invoke-static {p1}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-static {v0, p1, v2}, Lcom/alipay/sdk/app/h;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 6
    :cond_1
    sget-object v2, Lcom/alipay/sdk/app/PayTask;->h:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "true"

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "paymethod=\"expressGateway\""

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/sdk/util/j;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    new-instance v1, Lcom/alipay/sdk/util/f;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    new-instance v3, Lcom/alipay/sdk/app/g;

    invoke-direct {v3, p0}, Lcom/alipay/sdk/app/g;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    invoke-direct {v1, v2, v3}, Lcom/alipay/sdk/util/f;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/util/f$a;)V

    .line 13
    invoke-virtual {v1, p1}, Lcom/alipay/sdk/util/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v1}, Lcom/alipay/sdk/util/f;->e()V

    const-string v1, "failed"

    .line 15
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 18
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object p1

    .line 20
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 21
    :cond_4
    sget-object p1, Lcom/alipay/sdk/app/PayTask;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 22
    :cond_5
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v1

    throw p1
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    :cond_0
    return-void
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->h()V

    .line 2
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/packet/impl/d;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/d;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/sdk/packet/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/b;->a()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "form"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "onload"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/alipay/sdk/protocol/b;->b(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/sdk/protocol/b;

    iget-object v2, v2, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    sget-object v3, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    if-ne v2, v3, :cond_1

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/sdk/protocol/b;

    iget-object v2, v2, Lcom/alipay/sdk/protocol/b;->c:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const-string v3, "tid"

    aget-object v4, v2, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v3

    iget-object v3, v3, Lm/b;->a:Landroid/content/Context;

    invoke-static {}, Ln/b;->a()Ln/b;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x2

    aget-object v7, v2, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v2, v5

    iput-object v5, v4, Ln/b;->a:Ljava/lang/String;

    aget-object v2, v2, v6

    iput-object v2, v4, Ln/b;->b:Ljava/lang/String;

    new-instance v2, Ln/a;

    invoke-direct {v2, v3}, Ln/a;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v3}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/util/b;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v4, Ln/b;->a:Ljava/lang/String;

    iget-object v4, v4, Ln/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v6, v4}, Ln/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->j()V

    .line 12
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/sdk/protocol/b;

    iget-object v1, v1, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    sget-object v2, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    if-ne v1, v2, :cond_3

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/sdk/protocol/b;

    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->b(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->j()V

    return-object p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    const-string v0, "biz"

    const-string v1, "H5PayDataAnalysisError"

    .line 16
    invoke-static {v0, v1, p1}, Lcom/alipay/sdk/app/statistic/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 17
    :cond_4
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->j()V

    const/4 p1, 0x0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 18
    :try_start_4
    sget-object v0, Lcom/alipay/sdk/app/i;->d:Lcom/alipay/sdk/app/i;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/i;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object v0

    const-string v1, "net"

    .line 19
    invoke-static {v1, p1}, Lcom/alipay/sdk/app/statistic/a;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 20
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->j()V

    move-object p1, v0

    :goto_3
    if-nez p1, :cond_5

    .line 21
    sget-object p1, Lcom/alipay/sdk/app/i;->b:Lcom/alipay/sdk/app/i;

    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->a()I

    move-result p1

    invoke-static {p1}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object p1

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/alipay/sdk/app/i;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/alipay/sdk/app/h;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_2
    move-exception p1

    .line 23
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->j()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->f()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized fetchOrderInfoFromH5PayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(http|https)://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {v1}, Lcom/alipay/sdk/util/j;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "req_data"

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "<request_token>"

    const-string v1, "</request_token>"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_input_charset=\"utf-8\"&ordertoken=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lm/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lm/a;-><init>(Landroid/content/Context;)V

    const-string v1, "sc"

    const-string v2, "h5tonative"

    .line 10
    invoke-virtual {p1, v1, v2}, Lm/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object p1

    .line 11
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(http|https)://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    invoke-static {v1}, Lcom/alipay/sdk/util/j;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "req_data"

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "<request_token>"

    const-string v1, "</request_token>"

    .line 17
    invoke-static {v0, v1, p1}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_input_charset=\"utf-8\"&ordertoken=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lm/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lm/a;-><init>(Landroid/content/Context;)V

    const-string v1, "sc"

    const-string v2, "h5tonative"

    .line 19
    invoke-virtual {p1, v1, v2}, Lm/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    .line 20
    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "alipay.wap.create.direct.pay.by.user"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(http|https)://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_5

    .line 24
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    .line 25
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bizcontext"

    .line 26
    new-instance v2, Lm/a;

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lm/a;-><init>(Landroid/content/Context;)V

    const-string v3, "sc"

    const-string v4, "h5tonative"

    .line 27
    invoke-virtual {v2, v3, v4}, Lm/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new_external_info=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    :cond_5
    :try_start_4
    const-string v0, "^(http|https)://(maliprod\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mali\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mclient\\.alipay\\.com\\/w\\/trade_pay\\.do.?)"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "?"

    const-string v1, ""

    .line 33
    invoke-static {v0, v1, p1}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 35
    invoke-static {p1}, Lcom/alipay/sdk/util/j;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "trade_no"

    const-string v4, "trade_no"

    const-string v5, "alipay_trade_no"

    .line 37
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v6

    move-object v4, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/alipay/sdk/app/PayTask;->f(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "pay_phase_id"

    const-string v4, "payPhaseId"

    const-string v5, "pay_phase_id"

    const-string v6, "out_relation_id"

    .line 38
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v6

    move-object v4, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/alipay/sdk/app/PayTask;->f(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    const-string v1, "&biz_sub_type=\"TRADE\""

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&biz_type=\"trade\""

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_name"

    .line 41
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "cid"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "ali1688"

    goto :goto_0

    .line 43
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "sid"

    .line 44
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "s_id"

    .line 45
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    const-string v1, "tb"

    .line 46
    :cond_8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&app_name=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "extern_token"

    const-string v4, "extern_token"

    const-string v5, "cid"

    const-string v6, "sid"

    const-string v7, "s_id"

    .line 47
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    move-object v4, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/alipay/sdk/app/PayTask;->f(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string p1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    monitor-exit p0

    return-object p1

    :cond_9
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "appenv"

    const-string v4, "appenv"

    .line 49
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    move-object v4, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/alipay/sdk/app/PayTask;->f(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    const-string v1, "&pay_channel_id=\"alipay_sdk\""

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v1, Lcom/alipay/sdk/app/PayTask$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/sdk/app/PayTask$a;-><init>(Lcom/alipay/sdk/app/PayTask;B)V

    const-string v2, "return_url"

    .line 52
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/sdk/app/PayTask$a;->a:Ljava/lang/String;

    const-string v2, "pay_order_id"

    .line 53
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v1, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&bizcontext=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lm/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lm/a;-><init>(Landroid/content/Context;)V

    const-string v2, "sc"

    const-string v3, "h5tonative"

    .line 55
    invoke-virtual {v0, v2, v3}, Lm/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 57
    monitor-exit p0

    return-object p1

    :catchall_1
    :cond_a
    :try_start_6
    const-string p1, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 58
    monitor-exit p0

    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "15.0.8"

    return-object v0
.end method

.method public declared-synchronized h5Pay(Ljava/lang/String;Z)Lcom/alipay/sdk/util/a;
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/util/a;

    invoke-direct {v0}, Lcom/alipay/sdk/util/a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const-string v1, ";"

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p2, v4

    const-string v6, "={"

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 8
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v8, v7

    const-string/jumbo v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "resultStatus"

    .line 10
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "resultStatus"

    .line 11
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/alipay/sdk/util/a;->c(Ljava/lang/String;)V

    :cond_1
    const-string p2, "callBackUrl"

    .line 12
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "callBackUrl"

    .line 13
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/util/a;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string p2, "result"

    .line 14
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "result"

    .line 15
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_7

    .line 17
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/sdk/app/PayTask$a;

    if-eqz v1, :cond_4

    .line 18
    iget-object p2, v1, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 19
    iget-object p2, v1, Lcom/alipay/sdk/app/PayTask$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/alipay/sdk/util/a;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    move-result-object p2

    iget-object p2, p2, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    const-string v2, "$OrderId$"

    .line 21
    iget-object v1, v1, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Lcom/alipay/sdk/util/a;->d(Ljava/lang/String;)V

    .line 23
    :goto_1
    iget-object p2, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_2
    const-string p1, "&callBackUrl=\""

    const-string v1, "\""

    .line 25
    invoke-static {p1, v1, p2}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "&call_back_url=\""

    const-string v1, "\""

    .line 27
    invoke-static {p1, v1, p2}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "&return_url=\""

    const-string v1, "\""

    .line 29
    invoke-static {p1, v1, p2}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "&return_url="

    const-string v1, "&"

    .line 31
    invoke-static {p1, v1, p2}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "utf-8"

    .line 32
    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "&callBackUrl="

    const-string v1, "&"

    .line 34
    invoke-static {p1, v1, p2}, Lcom/alipay/sdk/util/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    .line 35
    invoke-static {p1, p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 37
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    move-result-object p1

    iget-object p1, p1, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    :cond_6
    const-string p2, "utf-8"

    .line 38
    invoke-static {p1, p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/util/a;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :cond_7
    iget-object p2, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/sdk/app/PayTask$a;

    if-eqz p2, :cond_8

    .line 40
    iget-object p2, p2, Lcom/alipay/sdk/app/PayTask$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/alipay/sdk/util/a;->d(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    monitor-exit p0

    return-object v0

    .line 43
    :catchall_0
    :cond_8
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized pay(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->h()V

    :cond_0
    const-string p2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/a;->b(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->j()V

    .line 5
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    :goto_0
    invoke-static {v0, p1}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :catchall_0
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/a;->b(Landroid/content/Context;)V

    .line 7
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->j()V

    .line 8
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 9
    :goto_1
    monitor-exit p0

    return-object p2

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
