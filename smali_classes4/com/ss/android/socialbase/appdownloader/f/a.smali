.class public Lcom/ss/android/socialbase/appdownloader/f/a;
.super Ljava/lang/Object;
.source "AnUtils.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/android/socialbase/appdownloader/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;
    .locals 2

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 35
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/a;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    return-object p0

    :catchall_0
    :cond_1
    return-object v1
.end method

.method public static a(Lorg/json/JSONArray;)Z
    .locals 12

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 9
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "package_names"

    .line 10
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "version_allow"

    .line 11
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "version_block"

    .line 12
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "allow_version_range"

    .line 13
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    return v0

    :cond_2
    const-string v8, ","

    .line 15
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 16
    array-length v8, v5

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v10, v5, v9

    const-string v11, "market"

    .line 17
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 18
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->i()Ljava/lang/String;

    move-result-object v10

    .line 19
    :cond_3
    invoke-static {v10}, Lcom/ss/android/socialbase/appdownloader/f/a;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 20
    invoke-static {v6, v7, v4, v10}, Lcom/ss/android/socialbase/appdownloader/f/a;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/g$a;)Z

    move-result v3

    if-nez v3, :cond_4

    return v0

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method

.method public static a(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "type"

    .line 4
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/f/a;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/g$a;)Z
    .locals 4
    .param p3    # Lcom/ss/android/socialbase/appdownloader/g$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-virtual {p3}, Lcom/ss/android/socialbase/appdownloader/g$a;->g()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p3}, Lcom/ss/android/socialbase/appdownloader/g$a;->f()I

    move-result p3

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    :try_start_0
    const-string p0, "[-,]"

    .line 25
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 26
    :goto_0
    array-length p2, p0

    if-ge p1, p2, :cond_3

    .line 27
    aget-object p2, p0, p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 v0, p1, 0x1

    .line 28
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p3, p2, :cond_0

    if-gt p3, v0, :cond_0

    return v3

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    .line 30
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 31
    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/f/a;->b(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_2
    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 33
    invoke-static {p1, v0}, Lcom/ss/android/socialbase/appdownloader/f/a;->b(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return v3

    :cond_3
    :goto_1
    return v2
.end method

.method public static a(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "device_requirements"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 7
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/a;->b(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/f/a;->a(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/a;->c(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static a(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "s"

    .line 38
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v2, "az"

    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ba"

    .line 40
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 41
    const-class v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 45
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method private static b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;
    .locals 3

    .line 13
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/appdownloader/g$a;

    if-eqz p0, :cond_1

    move-object v2, p0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/g;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;

    move-result-object v1

    .line 16
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    :goto_0
    return-object v2
.end method

.method private static b(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 11
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static b(Lorg/json/JSONObject;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "allow_os_api_range"

    .line 2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "min_os_api"

    .line 3
    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    :try_start_0
    const-string p0, "[-,]"

    .line 5
    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 7
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v5, v2, 0x1

    .line 8
    aget-object v5, p0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v3, :cond_1

    if-gt v1, v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v4

    :cond_3
    if-lez p0, :cond_5

    if-lt v1, p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    return v0
.end method

.method public static c(Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "scy_mode"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
