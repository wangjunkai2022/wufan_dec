.class public Lcom/join/mgps/rpc/m;
.super Ljava/lang/Object;
.source "RpcPapaPayClient.java"


# static fields
.field private static final a:Ljava/lang/String; = "RPCClient"

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/join/mgps/rpc/m;->b:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/join/mgps/dto/PayGameDataRequest;Lcom/join/android/app/common/http/b;)V
    .locals 2

    const-string v0, "RPCClient"

    const-string v1, "method getOrderId() called."

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/mgps/rpc/m$c;

    invoke-direct {v0, p1}, Lcom/join/mgps/rpc/m$c;-><init>(Lcom/join/android/app/common/http/b;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/join/mgps/dto/PayGameDataRequest;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static b(Lcom/join/mgps/dto/PayGameDataRequest;Lcom/join/android/app/common/http/b;)V
    .locals 2

    const-string v0, "RPCClient"

    const-string v1, "method getOrderId() called."

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/mgps/rpc/m$d;

    invoke-direct {v0, p1}, Lcom/join/mgps/rpc/m$d;-><init>(Lcom/join/android/app/common/http/b;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/join/mgps/dto/PayGameDataRequest;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static c(Lcom/join/mgps/dto/RequestAppDetialArgs;Lcom/join/android/app/common/http/b;)V
    .locals 2

    const-string v0, "RPCClient"

    const-string v1, "method getOrderId() called."

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/mgps/rpc/m$e;

    invoke-direct {v0, p1}, Lcom/join/mgps/rpc/m$e;-><init>(Lcom/join/android/app/common/http/b;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/join/mgps/dto/RequestAppDetialArgs;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static d(Lcom/join/mgps/dto/PayCenterOrderRequest;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getArgsURLEncoder()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getArgs()Ljava/util/Map;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/rpc/g;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "&"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p0, v3, :cond_1

    .line 12
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 13
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "sign="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lcom/join/mgps/rpc/m;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/rpc/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
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

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "582df15de91b3f12d8e710073e43f4f8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "resource_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "callback_url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "app_name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "app_user_name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "product_name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 12
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_4

    .line 13
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Lcom/join/mgps/dto/PayCenterOrderRequest;Lcom/join/android/app/common/http/b;)V
    .locals 2

    const-string v0, "RPCClient"

    const-string v1, "method getOrderId() called."

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/mgps/rpc/m$a;

    invoke-direct {v0, p1}, Lcom/join/mgps/rpc/m$a;-><init>(Lcom/join/android/app/common/http/b;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/join/mgps/dto/PayCenterOrderRequest;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static g(Lcom/join/mgps/dto/PayGameDataRequest;Lcom/join/android/app/common/http/b;)V
    .locals 2

    const-string v0, "RPCClient"

    const-string v1, "method getOrderId() called."

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/mgps/rpc/m$b;

    invoke-direct {v0, p1}, Lcom/join/mgps/rpc/m$b;-><init>(Lcom/join/android/app/common/http/b;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/join/mgps/dto/PayGameDataRequest;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "UTF8"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/rpc/m;->i([B)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static i([B)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    sget-object v2, Lcom/join/mgps/rpc/m;->b:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
