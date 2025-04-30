.class public final Lcom/alipay/sdk/protocol/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/alipay/sdk/protocol/a;

.field private b:Ljava/lang/String;

.field public c:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alipay/sdk/protocol/b;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/alipay/sdk/protocol/a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/alipay/sdk/protocol/b;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/protocol/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/sdk/protocol/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "name"

    const-string v2, ""

    .line 2
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 p0, 0x0

    .line 4
    :goto_0
    array-length v2, v1

    if-ge p0, v2, :cond_3

    .line 5
    aget-object v2, v1, p0

    invoke-static {v2}, Lcom/alipay/sdk/protocol/a;->a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    if-eq v2, v3, :cond_2

    .line 7
    new-instance v3, Lcom/alipay/sdk/protocol/b;

    aget-object v4, v1, p0

    invoke-direct {v3, v4, v2}, Lcom/alipay/sdk/protocol/b;-><init>(Ljava/lang/String;Lcom/alipay/sdk/protocol/a;)V

    .line 8
    aget-object v2, v1, p0

    invoke-static {v2}, Lcom/alipay/sdk/protocol/b;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/sdk/protocol/b;->c:[Ljava/lang/String;

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static c(Lcom/alipay/sdk/protocol/b;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/protocol/b;->c:[Ljava/lang/String;

    .line 2
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    aget-object v0, p0, v0

    const-string v1, "tid"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v0

    iget-object v0, v0, Lm/b;->a:Landroid/content/Context;

    .line 5
    invoke-static {}, Ln/b;->a()Ln/b;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    aget-object v4, p0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    aget-object v2, p0, v2

    iput-object v2, v1, Ln/b;->a:Ljava/lang/String;

    .line 8
    aget-object p0, p0, v3

    iput-object p0, v1, Ln/b;->b:Ljava/lang/String;

    .line 9
    new-instance p0, Ln/a;

    invoke-direct {p0, v0}, Ln/a;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-static {v0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/b;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Ln/b;->a:Ljava/lang/String;

    iget-object v1, v1, Ln/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v3, v1}, Ln/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    throw v0

    :catch_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x28

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x29

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-eq v2, v3, :cond_3

    if-gt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 7
    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v1, [Ljava/lang/String;

    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private e()Lcom/alipay/sdk/protocol/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private g()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/protocol/b;->c:[Ljava/lang/String;

    return-object v0
.end method
