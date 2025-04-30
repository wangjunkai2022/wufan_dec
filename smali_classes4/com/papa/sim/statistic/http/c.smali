.class public Lcom/papa/sim/statistic/http/c;
.super Ljava/lang/Object;
.source "RPCClient.java"


# static fields
.field private static a:Lcom/papa/sim/statistic/http/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 2
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 4
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "625202f9149e061d"

    const-string v1, "AES/ECB/NoPadding"

    .line 1
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 4
    array-length v3, p0

    .line 5
    rem-int v4, v3, v2

    if-eqz v4, :cond_0

    .line 6
    rem-int v4, v3, v2

    sub-int/2addr v2, v4

    add-int/2addr v3, v2

    .line 7
    :cond_0
    new-array v2, v3, [B

    .line 8
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v3, "AES"

    invoke-direct {p0, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {v1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 11
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/papa/sim/statistic/http/c;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static c()Lcom/papa/sim/statistic/http/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/http/c;->a:Lcom/papa/sim/statistic/http/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/papa/sim/statistic/http/c;

    invoke-direct {v0}, Lcom/papa/sim/statistic/http/c;-><init>()V

    sput-object v0, Lcom/papa/sim/statistic/http/c;->a:Lcom/papa/sim/statistic/http/c;

    .line 2
    :cond_0
    sget-object v0, Lcom/papa/sim/statistic/http/c;->a:Lcom/papa/sim/statistic/http/c;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/a;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->I()Lcom/papa/sim/statistic/http/b$q;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v1, [Lcom/papa/sim/statistic/http/b$n;

    new-instance v5, Lcom/papa/sim/statistic/http/c$a;

    invoke-direct {v5, p0, p3}, Lcom/papa/sim/statistic/http/c$a;-><init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v2, "file"

    move-object v1, p1

    move-object v3, p2

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/http/b$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILcom/papa/sim/statistic/http/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcom/papa/sim/statistic/http/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x6

    new-array p1, p1, [Lcom/papa/sim/statistic/http/b$n;

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/http/b$n;

    const-string v1, "device_id"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Lcom/papa/sim/statistic/http/b$n;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "brand"

    invoke-direct {v0, v3, v1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Lcom/papa/sim/statistic/http/b$n;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "model"

    invoke-direct {v0, v3, v1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    new-instance v0, Lcom/papa/sim/statistic/http/b$n;

    const-string v1, "data"

    invoke-direct {v0, v1, p5}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x3

    aput-object v0, p1, p5

    new-instance p5, Lcom/papa/sim/statistic/http/b$n;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "game_id"

    invoke-direct {p5, p4, p3}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x4

    aput-object p5, p1, p3

    new-instance p3, Lcom/papa/sim/statistic/http/b$n;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "uid"

    invoke-direct {p3, p5, p4}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x5

    aput-object p3, p1, p4

    new-instance p3, Lcom/papa/sim/statistic/http/c$e;

    invoke-direct {p3, p0, p7}, Lcom/papa/sim/statistic/http/c$e;-><init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V

    invoke-static {p2, p1, p3}, Lcom/papa/sim/statistic/http/b;->Y(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;)V

    return-void
.end method

.method public f(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "Papa_Stat_SharedPreferences"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "RequestHeaders"

    const-string v2, ""

    .line 2
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v0

    const-class v2, Lcom/papa/sim/statistic/RequestHeaderBean;

    invoke-virtual {v0, p1, v2}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/sim/statistic/RequestHeaderBean;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWufankey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_ad()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_pm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/papa/sim/statistic/http/b;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWufankey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/papa/sim/statistic/http/a<",
            "Lcom/papa/sim/statistic/StatResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    move-result-object v0

    new-instance v1, Lcom/papa/sim/statistic/http/c$d;

    invoke-direct {v1, p0, p2, p3}, Lcom/papa/sim/statistic/http/c$d;-><init>(Lcom/papa/sim/statistic/http/c;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b$o;->n(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V

    return-void
.end method

.method public h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/papa/sim/statistic/http/a<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/StatRequest;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/q;->p()[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_0

    .line 4
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/papa/sim/statistic/StatRequest;

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"uid\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/papa/sim/statistic/Data;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\",\"game_id\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "\",\"batch_id\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\",\"play_time\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getDuration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\"},"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"batch_id\":\""

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\",\"play_game_time_info\":["

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-virtual {v1, v2, p3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]}"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-static {p3}, Lcom/papa/sim/statistic/http/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 8
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/papa/sim/statistic/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"version\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"deviceid\": \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"sign\": \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\",\"messages\": {\"args\": {\"info\":\""

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"}}}"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object p5

    invoke-virtual {p5}, Lcom/papa/sim/statistic/q;->b()Ljava/lang/String;

    move-result-object p5

    .line 11
    :try_start_0
    invoke-static {p5, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object v4, p5

    .line 13
    invoke-static {p1}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/papa/sim/statistic/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    .line 15
    :try_start_1
    invoke-static {p5, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move-object v5, p5

    .line 17
    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/q;->g()Ljava/lang/String;

    move-result-object p1

    .line 18
    :try_start_2
    invoke-static {p1, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p5

    .line 19
    invoke-virtual {p5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    move-object v7, p1

    .line 20
    invoke-static {}, Lcom/papa/sim/statistic/g;->e()Ljava/lang/String;

    move-result-object p1

    .line 21
    :try_start_3
    invoke-static {p1, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p5

    .line 22
    invoke-virtual {p5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    move-object v8, p1

    .line 23
    :try_start_4
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    move-object v9, v1

    .line 25
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v2 .. v9}, Lcom/papa/sim/statistic/http/b;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p1, Lcom/papa/sim/statistic/http/c$f;

    invoke-direct {p1, p0, p4}, Lcom/papa/sim/statistic/http/c$f;-><init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V

    invoke-static {p2, p3, p1}, Lcom/papa/sim/statistic/http/b;->U(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V

    return-void
.end method

.method public i(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;Lcom/papa/sim/statistic/http/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/papa/sim/statistic/JoyStickConfig;",
            "Lcom/papa/sim/statistic/http/a<",
            "Lcom/papa/sim/statistic/GameWorldResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfigTmp;

    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfigTmp;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setUid(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setDevice_id(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/q;->n()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setVer(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_mac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setGamepad_mac(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setGamepad_name(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setUpload_time(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/papa/sim/statistic/n;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v6, Ljava/io/File;

    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->I()Lcom/papa/sim/statistic/http/b$q;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/papa/sim/statistic/o;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/v14/user/configure/game_pad_cfg"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x7

    new-array v7, v1, [Lcom/papa/sim/statistic/http/b$n;

    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "uid"

    invoke-direct {v1, v8, v5}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v1, v7, v5

    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/q;->n()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "ver"

    invoke-direct {v1, v5, p1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    aput-object v1, v7, p1

    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 13
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_mac()Ljava/lang/String;

    move-result-object v1

    const-string v5, "gamepad_mac"

    invoke-direct {p1, v5, v1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-object p1, v7, v1

    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 14
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_name()Ljava/lang/String;

    move-result-object v1

    const-string v5, "gamepad_name"

    invoke-direct {p1, v5, v1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-object p1, v7, v1

    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "upload_time"

    invoke-direct {p1, v1, p2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    aput-object p1, v7, p2

    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    const-string p2, "device_id"

    invoke-direct {p1, p2, v2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    aput-object p1, v7, p2

    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    const-string p2, "sign"

    invoke-direct {p1, p2, v0}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x6

    aput-object p1, v7, p2

    new-instance v8, Lcom/papa/sim/statistic/http/c$b;

    invoke-direct {v8, p0, p3}, Lcom/papa/sim/statistic/http/c$b;-><init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V

    .line 16
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v5, "file"

    .line 17
    invoke-virtual/range {v3 .. v9}, Lcom/papa/sim/statistic/http/b$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public j(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;Lcom/papa/sim/statistic/http/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/papa/sim/statistic/JoyStickConfig;",
            "Lcom/papa/sim/statistic/http/a<",
            "Lcom/papa/sim/statistic/GameWorldResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfigTmp;

    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfigTmp;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setUid(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setDevice_id(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/q;->n()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setVer(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_mac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setGamepad_mac(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setGamepad_name(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setUpload_time(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/papa/sim/statistic/n;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v6, Ljava/io/File;

    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->I()Lcom/papa/sim/statistic/http/b$q;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/papa/sim/statistic/o;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/v14/user/configure/game_pad_info"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x7

    new-array v7, v1, [Lcom/papa/sim/statistic/http/b$n;

    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "uid"

    invoke-direct {v1, v8, v5}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v1, v7, v5

    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/q;->n()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "ver"

    invoke-direct {v1, v5, p1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    aput-object v1, v7, p1

    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 13
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_mac()Ljava/lang/String;

    move-result-object v1

    const-string v5, "gamepad_mac"

    invoke-direct {p1, v5, v1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-object p1, v7, v1

    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 14
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_name()Ljava/lang/String;

    move-result-object v1

    const-string v5, "gamepad_name"

    invoke-direct {p1, v5, v1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-object p1, v7, v1

    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "upload_time"

    invoke-direct {p1, v1, p2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    aput-object p1, v7, p2

    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    const-string p2, "device_id"

    invoke-direct {p1, p2, v2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    aput-object p1, v7, p2

    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    const-string p2, "sign"

    invoke-direct {p1, p2, v0}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x6

    aput-object p1, v7, p2

    new-instance v8, Lcom/papa/sim/statistic/http/c$c;

    invoke-direct {v8, p0, p3}, Lcom/papa/sim/statistic/http/c$c;-><init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V

    .line 16
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v5, "file"

    .line 17
    invoke-virtual/range {v3 .. v9}, Lcom/papa/sim/statistic/http/b$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method
