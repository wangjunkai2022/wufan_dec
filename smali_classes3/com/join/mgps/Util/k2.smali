.class public Lcom/join/mgps/Util/k2;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/k2$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const-string v2, "]"

    const-string v3, "["

    const-string v4, "[]: empty\n"

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    :goto_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v5, v1, :cond_c

    .line 5
    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, p2}, Lcom/join/mgps/Util/k2;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 8
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    .line 9
    instance-of v6, p1, Ljava/util/Hashtable;

    .line 10
    instance-of v7, p1, Ljava/util/HashMap;

    .line 11
    instance-of v8, p1, Ljava/util/HashSet;

    .line 12
    instance-of v9, p1, Ljava/util/AbstractMap;

    const/4 v10, 0x1

    if-nez v9, :cond_3

    if-nez v7, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_5

    .line 13
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 16
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 17
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 18
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, p2}, Lcom/join/mgps/Util/k2;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    :cond_5
    if-nez v1, :cond_6

    if-eqz v8, :cond_c

    :cond_6
    const/4 v9, 0x0

    if-eqz v1, :cond_7

    .line 21
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_8

    .line 23
    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 24
    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result p1

    goto :goto_4

    :cond_8
    if-eqz v8, :cond_9

    .line 25
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 26
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    goto :goto_4

    :cond_9
    if-eqz v7, :cond_a

    .line 27
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 28
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    :goto_4
    if-lez p1, :cond_b

    .line 29
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 30
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/join/mgps/Util/k2;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v5, v10

    goto :goto_5

    .line 32
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    :cond_c
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2, p0, p1, v0, p2}, Lcom/join/mgps/Util/k2;->f([Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/Hashtable;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/HashSet;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/util/AbstractMap;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private static e([Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance p0, Lcom/join/mgps/Util/k2$a;

    new-instance v1, Lcom/join/mgps/Util/k2;

    invoke-direct {v1}, Lcom/join/mgps/Util/k2;-><init>()V

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u5e7f\u897f\u5927\u5b66\u897f\u6821\u56ed10\u680b204 \u5bbf\u820d"

    const-string v4, "\u4e91\u5b88\u62a4"

    const-string v5, "\u6211\u5728\u53c2\u52a0\u4fe1\u606f\u5b89\u5168\u5927\u8d5b\u5462"

    const-string v6, "2012-5-19"

    const-string v7, "1"

    const-string v8, "100"

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/Util/k2$a;-><init>(Lcom/join/mgps/Util/k2;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "test"

    invoke-static {v1, p0}, Lcom/join/mgps/Util/k2;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static f([Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__discriminator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__uninitialized"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v1, p0, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, p4}, Lcom/join/mgps/Util/k2;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/util/LinkedMultiValueMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/springframework/util/LinkedMultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->c(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->d(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": null\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/k2;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/k2;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\r"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": null\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/k2;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/k2;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": <already visited>\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
