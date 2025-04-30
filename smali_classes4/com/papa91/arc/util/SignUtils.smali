.class public Lcom/papa91/arc/util/SignUtils;
.super Ljava/lang/Object;
.source "SignUtils.java"


# static fields
.field private static final SECURE_KEY:Ljava/lang/String; = "21wq7byuGiENB4r7mOsqBYiNUyhpXAXu"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/papa91/arc/util/SignUtils;->lambda$sortMapByKey$0(ZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static buildRequestSign(Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "21wq7byuGiENB4r7mOsqBYiNUyhpXAXu"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/util/SignUtils;->buildRequestSign(Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestSign(Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 4

    .line 3
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0, v1}, Lcom/papa91/arc/util/SignUtils;->buildRequestSign(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestSign(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lcom/papa91/arc/util/SignUtils;->sortMapByKey(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/arc/util/DigestUtils;->md5DigestAsHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestSign(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "21wq7byuGiENB4r7mOsqBYiNUyhpXAXu"

    .line 2
    invoke-static {v0, p0}, Lcom/papa91/arc/util/SignUtils;->buildRequestSign(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$sortMapByKey$0(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static sortMapByKey(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/papa91/arc/util/a;

    invoke-direct {v1, p1}, Lcom/papa91/arc/util/a;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
