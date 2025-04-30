.class public Lcom/xinzhu/overmind/utils/helpers/h;
.super Ljava/lang/Object;
.source "SystemPropertiesHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/s;->n(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2
    invoke-virtual {v0, v1, v3}, Lcom/xinzhu/overmind/utils/s;->k(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    .line 3
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/utils/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "def"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Lcom/xinzhu/overmind/utils/s;->n(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    .line 2
    invoke-virtual {v1, v2, v4}, Lcom/xinzhu/overmind/utils/s;->k(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v5

    aput-object p1, v1, v6

    .line 3
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/utils/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public static c(Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "def"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/s;->n(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s;

    move-result-object v0

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 2
    invoke-virtual {v0, v1, v3}, Lcom/xinzhu/overmind/utils/s;->k(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v6

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/utils/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p1
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/utils/helpers/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
