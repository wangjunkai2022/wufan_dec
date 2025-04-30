.class public final Lcom/bytedance/pangle/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/pangle/f/c$a;,
        Lcom/bytedance/pangle/f/c$c;,
        Lcom/bytedance/pangle/f/c$b;
    }
.end annotation


# direct methods
.method private static a(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Lcom/bytedance/pangle/f/c$b;
    .locals 14

    const-string v0, " when verifying Proof-of-rotation record"

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 102
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 103
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 104
    invoke-static {p0}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 105
    invoke-static {v7}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 106
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 107
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 108
    invoke-static {v7}, Lcom/bytedance/pangle/f/f;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    if-eqz v6, :cond_2

    .line 109
    invoke-static {v5}, Lcom/bytedance/pangle/f/f;->d(I)Landroid/util/Pair;

    move-result-object v11

    .line 110
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    .line 111
    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v13

    .line 112
    invoke-virtual {v13, v12}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 113
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v12, :cond_0

    .line 114
    check-cast v12, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v13, v12}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 115
    :cond_0
    invoke-virtual {v13, v8}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 116
    invoke-virtual {v13, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unable to verify signature of certificate #"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " using "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 119
    invoke-static {v8}, Lcom/bytedance/pangle/f/f;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 120
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    if-eqz v6, :cond_4

    if-ne v5, v8, :cond_3

    goto :goto_2

    .line 121
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Signing algorithm ID mismatch for certificate #"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_4
    :goto_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 123
    new-instance v6, Lcom/bytedance/pangle/f/p;

    invoke-direct {v6, v5, v7}, Lcom/bytedance/pangle/f/p;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 124
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 125
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v10

    goto/16 :goto_0

    .line 128
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Encountered duplicate entries in Proof-of-rotation record at certificate #"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".  All signing certificates should be unique"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_6
    new-instance p0, Lcom/bytedance/pangle/f/c$b;

    invoke-direct {p0, v1, v2}, Lcom/bytedance/pangle/f/c$b;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 130
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode certificate #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    .line 131
    :goto_3
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to verify signature over signed data for certificate #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    goto :goto_4

    :catch_6
    move-exception p0

    .line 132
    :goto_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to parse Proof-of-rotation record"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method static a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/f/m;)Lcom/bytedance/pangle/f/c$c;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    :try_start_0
    const-string v1, "X.509"

    .line 2
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5

    .line 3
    :try_start_1
    iget-object v2, p1, Lcom/bytedance/pangle/f/m;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    :try_start_2
    invoke-static {v2}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 6
    invoke-static {v5, v0, v1}, Lcom/bytedance/pangle/f/c;->a(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)Lcom/bytedance/pangle/f/c$c;

    move-result-object v4
    :try_end_2
    .catch Lcom/bytedance/pangle/f/c$a; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 7
    :goto_1
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse/verify signer #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " block"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    nop

    goto :goto_0

    :cond_0
    if-lez v3, :cond_4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    if-ne v3, v1, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-static {v0, p0, p1}, Lcom/bytedance/pangle/f/f;->a(Ljava/util/Map;Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/f/m;)V

    const/4 v1, 0x3

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 12
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/pangle/f/f;->a([BJLcom/bytedance/pangle/f/m;)[B

    move-result-object p0

    iput-object p0, v4, Lcom/bytedance/pangle/f/c$c;->c:[B

    :cond_1
    return-object v4

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No content digests found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "APK Signature Scheme V3 only supports one signer: multiple signers found."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No signers found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Failed to read list of signers"

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;)Lcom/bytedance/pangle/f/c$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Lcom/bytedance/pangle/f/c$c;"
        }
    .end annotation

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    const/4 v0, 0x0

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    invoke-static {p0}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    .line 88
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const v3, 0x3ba06f8c

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    .line 89
    invoke-static {v1, p2}, Lcom/bytedance/pangle/f/c;->a(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Lcom/bytedance/pangle/f/c$b;

    move-result-object v0

    .line 90
    :try_start_0
    iget-object v1, v0, Lcom/bytedance/pangle/f/c$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/bytedance/pangle/f/c$b;->a:Ljava/util/List;

    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    .line 92
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Terminal certificate in Proof-of-rotation record does not match APK signing certificate"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 95
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Failed to encode certificate when comparing Proof-of-rotation record and signing certificate"

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 96
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Encountered multiple Proof-of-rotation records when verifying APK Signature Scheme v3 signature"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_5
    new-instance p0, Lcom/bytedance/pangle/f/c$c;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/pangle/f/c$c;-><init>([Ljava/security/cert/X509Certificate;Lcom/bytedance/pangle/f/c$b;)V

    return-object p0
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)Lcom/bytedance/pangle/f/c$c;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Lcom/bytedance/pangle/f/c$c;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 18
    invoke-static/range {p0 .. p0}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 19
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 20
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 22
    invoke-static/range {p0 .. p0}, Lcom/bytedance/pangle/f/f;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    .line 23
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v13

    const/16 v14, 0x8

    const/4 v15, 0x1

    if-eqz v13, :cond_5

    add-int/lit8 v11, v11, 0x1

    .line 25
    :try_start_0
    invoke-static {v4}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 26
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-lt v7, v14, :cond_4

    .line 27
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x201

    if-eq v7, v14, :cond_1

    const/16 v14, 0x202

    if-eq v7, v14, :cond_1

    const/16 v14, 0x301

    if-eq v7, v14, :cond_1

    const/16 v14, 0x421

    if-eq v7, v14, :cond_1

    const/16 v14, 0x423

    if-eq v7, v14, :cond_1

    const/16 v14, 0x425

    if-eq v7, v14, :cond_1

    packed-switch v7, :pswitch_data_0

    const/4 v15, 0x0

    :cond_1
    :pswitch_0
    if-nez v15, :cond_2

    goto :goto_0

    :cond_2
    if-eq v10, v8, :cond_3

    .line 29
    invoke-static {v7, v10}, Lcom/bytedance/pangle/f/f;->a(II)I

    move-result v14

    if-lez v14, :cond_0

    .line 30
    :cond_3
    invoke-static {v13}, Lcom/bytedance/pangle/f/f;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v10

    move-object v12, v10

    move v10, v7

    goto :goto_0

    .line 31
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature record too short"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 32
    :goto_1
    new-instance v1, Ljava/lang/SecurityException;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to parse signature record #"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    if-ne v10, v8, :cond_7

    if-nez v11, :cond_6

    .line 33
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No supported signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_7
    invoke-static {v10}, Lcom/bytedance/pangle/f/f;->c(I)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-static {v10}, Lcom/bytedance/pangle/f/f;->d(I)Landroid/util/Pair;

    move-result-object v7

    .line 37
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 38
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/security/spec/AlgorithmParameterSpec;

    .line 39
    :try_start_1
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v11, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v11, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v11}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 40
    invoke-static {v8}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v11

    .line 41
    invoke-virtual {v11, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v7, :cond_8

    .line 42
    invoke-virtual {v11, v7}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 43
    :cond_8
    invoke-virtual {v11, v1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 44
    invoke-virtual {v11, v12}, Ljava/security/Signature;->verify([B)Z

    move-result v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v4, :cond_14

    .line 45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 46
    invoke-static {v1}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 47
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 48
    :goto_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v12

    if-eqz v12, :cond_b

    add-int/2addr v11, v15

    .line 49
    :try_start_2
    invoke-static {v4}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 50
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-lt v13, v14, :cond_a

    .line 51
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 52
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v13, v10, :cond_9

    .line 53
    invoke-static {v12}, Lcom/bytedance/pangle/f/f;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    :cond_9
    const/16 v14, 0x8

    goto :goto_2

    .line 54
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Record too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 55
    :goto_3
    new-instance v1, Ljava/io/IOException;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to parse digest record #"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :cond_b
    invoke-interface {v6, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 57
    invoke-static {v10}, Lcom/bytedance/pangle/f/f;->a(I)I

    move-result v4

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-eqz v6, :cond_d

    .line 59
    invoke-static {v6, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_4

    .line 60
    :cond_c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/bytedance/pangle/f/f;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_d
    :goto_4
    invoke-static {v1}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 62
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 63
    :goto_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_e

    add-int/2addr v7, v15

    .line 64
    invoke-static {v4}, Lcom/bytedance/pangle/f/f;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    .line 65
    :try_start_3
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 66
    new-instance v11, Lcom/bytedance/pangle/f/p;

    invoke-direct {v11, v10, v8}, Lcom/bytedance/pangle/f/p;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 67
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_4
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/SecurityException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to decode certificate #"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :cond_e
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 70
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 71
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 72
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 73
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-ne v4, v2, :cond_10

    .line 74
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-ne v2, v3, :cond_f

    .line 75
    invoke-static {v1}, Lcom/bytedance/pangle/f/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 76
    invoke-static {v1, v6, v0}, Lcom/bytedance/pangle/f/c;->a(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;)Lcom/bytedance/pangle/f/c$c;

    move-result-object v0

    return-object v0

    .line 77
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "maxSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "minSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Public key mismatch between certificate and signature record"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No certificates listed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signature did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    .line 83
    :goto_6
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to verify "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
