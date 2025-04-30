.class public final Lcom/alipay/apmobilesecuritysdk/f/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    array-length p2, p1

    if-gtz p2, :cond_2

    goto :goto_4

    :cond_2
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p2

    if-gtz p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p2

    if-gtz p2, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    array-length p2, p1

    div-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x1

    new-array v1, p2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_5

    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    array-length p2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v2, p2, :cond_7

    aget-object v4, p1, v2

    div-int/lit8 v5, v3, 0x8

    aget-byte v5, v1, v5

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x80

    rem-int/lit8 v6, v3, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v5, v4

    :cond_6
    div-int/lit8 v4, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/crypto/a;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_6
    const-string p0, ""

    return-object p0
.end method
