.class public Lcom/tencent/stat/a/b;
.super Lcom/tencent/stat/a/e;


# instance fields
.field protected a:Lcom/tencent/stat/a/c;

.field private l:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/tencent/stat/a/c;

    invoke-direct {p1}, Lcom/tencent/stat/a/c;-><init>()V

    iput-object p1, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/stat/a/b;->l:J

    iput-object p3, p1, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/stat/a/f;->d:Lcom/tencent/stat/a/f;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/stat/a/b;->l:J

    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;

    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Properties;

    iput-object p1, v0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    :cond_0
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 6

    iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;

    iget-object v0, v0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;

    const-string v1, "ei"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/tencent/stat/a/b;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-string v2, "du"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;

    iget-object v1, v0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    const-string v2, "kv"

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;

    iget-object v0, v0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;

    iget-object v1, v1, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "ar"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;

    iget-object v0, v0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;

    iget-object v1, v1, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;

    iget-object v1, v1, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :cond_4
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
