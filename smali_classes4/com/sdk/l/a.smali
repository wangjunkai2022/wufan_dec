.class public Lcom/sdk/l/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "com.sdk.l.a"

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    sput-boolean v0, Lcom/sdk/l/a;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 15

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_5

    aget-object v4, v0, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "serialVersionUID"

    :try_start_1
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lcom/sdk/Unicorn/base/framework/bean/KInfo;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const/4 v12, 0x0

    :goto_2
    array-length v13, v10

    if-ge v12, v13, :cond_1

    aget-object v13, v10, v12

    invoke-virtual {v13, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_2
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move-object v7, v4

    :cond_4
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sdk/l/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lcom/sdk/l/a;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const/4 p0, 0x0

    :goto_5
    return-object p0
.end method
