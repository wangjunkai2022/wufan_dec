.class public Lcom/join/mgps/dto/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMapParams()Lorg/springframework/util/LinkedMultiValueMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/springframework/util/LinkedMultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 5
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    new-instance v2, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v2}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 7
    :try_start_0
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_1

    aget-object v7, v0, v5

    .line 8
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    array-length v0, v1

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v3, v1, v4

    .line 11
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 12
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v2

    .line 15
    :cond_3
    :goto_3
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    return-object v0
.end method
