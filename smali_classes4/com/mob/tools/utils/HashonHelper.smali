.class public Lcom/mob/tools/utils/HashonHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/HashonHelper$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    const-class v0, Ljava/lang/Character;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_19

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_e

    .line 70
    :cond_0
    const-class v0, Lcom/mob/tools/utils/HashonHelper$a;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 71
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "007iMcedccb5hAekeg"

    .line 72
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v4

    invoke-static {p1, p2, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v5

    .line 73
    :cond_1
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_d

    .line 74
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    check-cast p0, Ljava/util/HashMap;

    const-string p2, "004h0cjcbSk"

    .line 76
    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 77
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    check-cast p0, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    .line 81
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v4, v0, :cond_4

    .line 82
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, v5}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object p2

    .line 83
    :cond_5
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 84
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p2, :cond_6

    .line 85
    array-length v0, p2

    if-lez v0, :cond_6

    .line 86
    aget-object p2, p2, v4

    goto :goto_1

    :cond_6
    move-object p2, v5

    .line 87
    :goto_1
    check-cast p0, Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_9

    if-eqz p2, :cond_7

    .line 89
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_7

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 90
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Ljava/lang/Class;

    invoke-static {v1, v3, v5}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    .line 91
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_8

    .line 92
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 93
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 94
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 95
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v1, v3}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 96
    :cond_8
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    return-object p1

    .line 97
    :cond_a
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p2, :cond_b

    .line 99
    array-length v0, p2

    if-le v0, v3, :cond_b

    .line 100
    aget-object v0, p2, v4

    .line 101
    aget-object p2, p2, v3

    goto :goto_4

    :cond_b
    move-object p2, v5

    move-object v0, p2

    .line 102
    :goto_4
    check-cast p0, Ljava/util/HashMap;

    .line 103
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v0, :cond_c

    .line 104
    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_c

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 105
    move-object v4, v0

    check-cast v4, Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    :cond_c
    if-eqz v0, :cond_d

    .line 106
    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_d

    .line 107
    move-object v4, v0

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 108
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 109
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 110
    invoke-static {v3, v4, v6}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    :cond_d
    move-object v4, v3

    :goto_6
    if-eqz p2, :cond_e

    .line 111
    instance-of v6, p2, Ljava/lang/Class;

    if-eqz v6, :cond_e

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 112
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, p2

    check-cast v6, Ljava/lang/Class;

    invoke-static {v3, v6, v5}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    :cond_e
    if-eqz p2, :cond_f

    .line 113
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_f

    .line 114
    move-object v6, p2

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 115
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 116
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 117
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v6, v7}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    .line 118
    :cond_f
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 119
    :goto_7
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_10
    return-object p1

    .line 120
    :cond_11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    .line 121
    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 122
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_8

    .line 124
    :cond_12
    check-cast p0, Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 128
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 129
    :try_start_1
    invoke-virtual {v7, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_a

    :catchall_1
    move-object v7, v5

    :goto_a
    if-eqz v7, :cond_14

    .line 130
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 131
    :cond_15
    invoke-static {p1}, Lcom/mob/tools/utils/ReflectHelper;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    .line 132
    invoke-static {p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 136
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 137
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 138
    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_16

    .line 139
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    goto :goto_c

    :cond_16
    move-object v6, v5

    .line 140
    :goto_c
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 141
    invoke-static {v2, v4, v6}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_17
    return-object p1

    :cond_18
    :goto_d
    return-object p0

    .line 142
    :cond_19
    :goto_e
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    goto/16 :goto_15

    .line 143
    :cond_1a
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    goto/16 :goto_14

    .line 144
    :cond_1b
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    const-class p2, Ljava/lang/Byte;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto/16 :goto_13

    .line 145
    :cond_1c
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    const-class p2, Ljava/lang/Short;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    goto :goto_12

    .line 146
    :cond_1d
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    const-class p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    goto :goto_11

    .line 147
    :cond_1e
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    const-class p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_10

    .line 148
    :cond_1f
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    const-class p2, Ljava/lang/Float;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_f

    .line 149
    :cond_20
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 150
    :cond_21
    :goto_f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 151
    :cond_22
    :goto_10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 152
    :cond_23
    :goto_11
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 153
    :cond_24
    :goto_12
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 154
    :cond_25
    :goto_13
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 155
    :cond_26
    :goto_14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_27
    :goto_15
    const-string p1, "004cOcgcbTh"

    .line 156
    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
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

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\n"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-lez v2, :cond_0

    const-string v4, ",\n"

    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    instance-of v4, v3, Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 61
    check-cast v3, Ljava/util/HashMap;

    invoke-static {v1, v3}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 62
    :cond_1
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 63
    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 64
    :cond_2
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    const/16 v4, 0x22

    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 p1, 0xa

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
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

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez v2, :cond_0

    const-string v4, ",\n"

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 45
    instance-of v5, v3, Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 46
    check-cast v3, Ljava/util/HashMap;

    invoke-static {v1, v3}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 47
    :cond_1
    instance-of v5, v3, Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 48
    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 49
    :cond_2
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 p1, 0xa

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
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
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 15
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 16
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_1

    .line 17
    :cond_0
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 18
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 19
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-eqz v3, :cond_0

    .line 7
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 8
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_1

    .line 9
    :cond_2
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 10
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;)Lorg/json/JSONArray;
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
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 33
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 34
    check-cast v1, Ljava/util/HashMap;

    invoke-static {v1}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    .line 35
    :cond_0
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 36
    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 23
    instance-of v3, v2, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 24
    check-cast v2, Ljava/util/HashMap;

    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_1

    .line 25
    :cond_0
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 26
    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_1

    .line 27
    :cond_1
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->b(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .line 29
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 1

    .line 30
    instance-of v0, p0, [B

    if-nez v0, :cond_1

    instance-of v0, p0, [S

    if-nez v0, :cond_1

    instance-of v0, p0, [I

    if-nez v0, :cond_1

    instance-of v0, p0, [J

    if-nez v0, :cond_1

    instance-of v0, p0, [F

    if-nez v0, :cond_1

    instance-of v0, p0, [D

    if-nez v0, :cond_1

    instance-of v0, p0, [C

    if-nez v0, :cond_1

    instance-of v0, p0, [Z

    if-nez v0, :cond_1

    instance-of p0, p0, [Ljava/lang/String;

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

.method private static b(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5
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
    instance-of v0, p0, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    check-cast p0, [B

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, p0, v1

    .line 4
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 5
    :cond_1
    instance-of v0, p0, [S

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    check-cast p0, [S

    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-short v3, p0, v1

    .line 8
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    .line 9
    :cond_3
    instance-of v0, p0, [I

    if-eqz v0, :cond_5

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    check-cast p0, [I

    array-length v2, p0

    :goto_2
    if-ge v1, v2, :cond_4

    aget v3, p0, v1

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    .line 13
    :cond_5
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    check-cast p0, [J

    array-length v2, p0

    :goto_3
    if-ge v1, v2, :cond_6

    aget-wide v3, p0, v1

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-object v0

    .line 17
    :cond_7
    instance-of v0, p0, [F

    if-eqz v0, :cond_9

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    check-cast p0, [F

    array-length v2, p0

    :goto_4
    if-ge v1, v2, :cond_8

    aget v3, p0, v1

    .line 20
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-object v0

    .line 21
    :cond_9
    instance-of v0, p0, [D

    if-eqz v0, :cond_b

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    check-cast p0, [D

    array-length v2, p0

    :goto_5
    if-ge v1, v2, :cond_a

    aget-wide v3, p0, v1

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    return-object v0

    .line 25
    :cond_b
    instance-of v0, p0, [C

    if-eqz v0, :cond_d

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    check-cast p0, [C

    array-length v2, p0

    :goto_6
    if-ge v1, v2, :cond_c

    aget-char v3, p0, v1

    .line 28
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    return-object v0

    .line 29
    :cond_d
    instance-of v0, p0, [Z

    if-eqz v0, :cond_f

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    check-cast p0, [Z

    array-length v2, p0

    :goto_7
    if-ge v1, v2, :cond_e

    aget-boolean v3, p0, v1

    .line 32
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    return-object v0

    .line 33
    :cond_f
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_f

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/mob/tools/utils/HashonHelper$a;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/mob/tools/utils/HashonHelper$a;

    invoke-interface {p0}, Lcom/mob/tools/utils/HashonHelper$a;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "004h;cjcb%k"

    .line 6
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 10
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 11
    :cond_4
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_6

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/mob/tools/utils/HashonHelper;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0

    .line 15
    :cond_6
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 19
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/mob/tools/utils/HashonHelper;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    return-object v0

    .line 22
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    :goto_3
    const-class v3, Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 25
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    .line 27
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 29
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 30
    array-length v4, v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_b

    aget-object v6, v3, v5

    .line 31
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 32
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 33
    :cond_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 37
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_e
    return-object v1

    :cond_f
    :goto_6
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7
.end method

.method public static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "["

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "008(egceciEhSdccdefBc"

    .line 12
    invoke-static {p0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    const/4 p0, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 14
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 15
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 16
    :goto_0
    invoke-static {v0, p1, v1}, Lcom/mob/tools/utils/HashonHelper;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "["

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"fakelist\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 8
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 9
    :cond_2
    :goto_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static fromObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "004>dccdef.c"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    check-cast p0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
