.class public Lm/framework/utils/Hashon;
.super Ljava/lang/Object;
.source "Hashon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private arrayToList(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    move-object v2, p1

    check-cast v2, [B

    array-length v3, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-object v0

    :cond_0
    aget-byte p1, v2, v1

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    move-object v2, p1

    check-cast v2, [S

    array-length v3, v2

    :goto_1
    if-lt v1, v3, :cond_2

    return-object v0

    :cond_2
    aget-short p1, v2, v1

    .line 8
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    move-object v2, p1

    check-cast v2, [I

    array-length v3, v2

    :goto_2
    if-lt v1, v3, :cond_4

    return-object v0

    :cond_4
    aget p1, v2, v1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_5
    instance-of v0, p1, [J

    if-eqz v0, :cond_7

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    move-object v2, p1

    check-cast v2, [J

    array-length v3, v2

    :goto_3
    if-lt v1, v3, :cond_6

    return-object v0

    :cond_6
    aget-wide v4, v2, v1

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 17
    :cond_7
    instance-of v0, p1, [F

    if-eqz v0, :cond_9

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    move-object v2, p1

    check-cast v2, [F

    array-length v3, v2

    :goto_4
    if-lt v1, v3, :cond_8

    return-object v0

    :cond_8
    aget p1, v2, v1

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 21
    :cond_9
    instance-of v0, p1, [D

    if-eqz v0, :cond_b

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    move-object v2, p1

    check-cast v2, [D

    array-length v3, v2

    :goto_5
    if-lt v1, v3, :cond_a

    return-object v0

    :cond_a
    aget-wide v4, v2, v1

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 25
    :cond_b
    instance-of v0, p1, [C

    if-eqz v0, :cond_d

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    move-object v2, p1

    check-cast v2, [C

    array-length v3, v2

    :goto_6
    if-lt v1, v3, :cond_c

    return-object v0

    :cond_c
    aget-char p1, v2, v1

    .line 28
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 29
    :cond_d
    instance-of v0, p1, [Z

    if-eqz v0, :cond_f

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    move-object v2, p1

    check-cast v2, [Z

    array-length v3, v2

    :goto_7
    if-lt v1, v3, :cond_e

    return-object v0

    :cond_e
    aget-boolean p1, v2, v1

    .line 32
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 33
    :cond_f
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    check-cast p1, [Ljava/lang/String;

    array-length v2, p1

    :goto_8
    if-lt v1, v2, :cond_10

    return-object v0

    :cond_10
    aget-object v3, p1, v1

    .line 36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private format(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[\n"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 p2, 0xa

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-lez v2, :cond_1

    const-string v4, ",\n"

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    instance-of v4, v3, Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 30
    check-cast v3, Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lm/framework/utils/Hashon;->format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 31
    :cond_2
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 32
    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3}, Lm/framework/utils/Hashon;->format(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 33
    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    const/16 v4, 0x22

    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 35
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{\n"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 p2, 0xa

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez v2, :cond_1

    const-string v4, ",\n"

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 13
    instance-of v5, v3, Ljava/util/HashMap;

    if-eqz v5, :cond_2

    .line 14
    check-cast v3, Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lm/framework/utils/Hashon;->format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 15
    :cond_2
    instance-of v5, v3, Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 16
    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3}, Lm/framework/utils/Hashon;->format(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 17
    :cond_3
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 21
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 22
    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lm/framework/utils/Hashon;->fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_1

    .line 23
    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 24
    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lm/framework/utils/Hashon;->fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 25
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 10
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-eqz v3, :cond_0

    .line 13
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    .line 14
    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lm/framework/utils/Hashon;->fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_1

    .line 15
    :cond_3
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_4

    .line 16
    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lm/framework/utils/Hashon;->fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 17
    :cond_4
    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lm/framework/utils/Hashon;->getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_1
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lm/framework/utils/Hashon;->getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method private getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 4
    instance-of v3, v2, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lm/framework/utils/Hashon;->getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_1
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 7
    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lm/framework/utils/Hashon;->getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_1

    .line 8
    :cond_2
    invoke-direct {p0, v2}, Lm/framework/utils/Hashon;->isBasicArray(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-direct {p0, v2}, Lm/framework/utils/Hashon;->arrayToList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lm/framework/utils/Hashon;->getJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .line 10
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private isBasicArray(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    instance-of v0, p1, [S

    if-nez v0, :cond_0

    .line 2
    instance-of v0, p1, [I

    if-nez v0, :cond_0

    instance-of v0, p1, [J

    if-nez v0, :cond_0

    .line 3
    instance-of v0, p1, [F

    if-nez v0, :cond_0

    instance-of v0, p1, [D

    if-nez v0, :cond_0

    .line 4
    instance-of v0, p1, [C

    if-nez v0, :cond_0

    instance-of v0, p1, [Z

    if-nez v0, :cond_0

    .line 5
    instance-of p1, p1, [Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lm/framework/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lm/framework/utils/Hashon;->format(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lm/framework/utils/Hashon;->getJSONObject(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "["

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"fakelist\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lm/framework/utils/Hashon;->fromJson(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method
