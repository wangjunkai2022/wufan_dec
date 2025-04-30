.class public Lcom/tencent/cos/utils/SHA1Utils;
.super Ljava/lang/Object;
.source "SHA1Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileSha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p0, "SHA-1"

    .line 2
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 3
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/utils/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 8
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_2

    .line 11
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_2
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static getFileSha1([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 14
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "SHA-1"

    .line 15
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/4 v2, 0x0

    .line 16
    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 17
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/utils/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getSlicePartSha1(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v0, 0x100000

    move/from16 v1, p1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1
    :goto_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Lcom/tencent/cos/utils/CommonSha1Utils;

    invoke-direct {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;-><init>()V

    .line 3
    invoke-virtual {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->init()V

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/tencent/cos/utils/FileUtils;->getFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 5
    invoke-static/range {p0 .. p0}, Lcom/tencent/cos/utils/FileUtils;->getFileLength(Ljava/lang/String;)J

    move-result-wide v4

    add-int/lit8 v6, v0, -0x1

    int-to-long v6, v6

    add-long/2addr v6, v4

    int-to-long v8, v0

    .line 6
    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v6, -0x1

    const-string v10, "datasha"

    const-string v11, "datalen"

    const-string v12, "offset"

    const/16 v13, 0x400

    if-ge v8, v9, :cond_3

    mul-int v9, v8, v0

    int-to-long v14, v9

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v0, :cond_2

    sub-int v7, v0, v9

    if-le v7, v13, :cond_1

    const/16 v7, 0x400

    .line 7
    :cond_1
    :try_start_1
    new-array v13, v7, [B

    move/from16 v16, v6

    const/4 v6, 0x0

    .line 8
    invoke-virtual {v2, v13, v6, v7}, Ljava/io/InputStream;->read([BII)I

    .line 9
    invoke-virtual {v3, v13}, Lcom/tencent/cos/utils/CommonSha1Utils;->update([B)V

    add-int/2addr v9, v7

    move/from16 v6, v16

    const/16 v13, 0x400

    goto :goto_2

    :cond_2
    move/from16 v16, v6

    .line 10
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 11
    sget-object v7, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    iget-object v7, v7, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 12
    sget-object v7, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    iget-object v7, v7, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    sget-object v7, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    iget-object v7, v7, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->dumpTempState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v1, v8, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v16

    goto :goto_1

    :cond_3
    mul-int v0, v0, v9

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_5

    sub-int v5, v0, v4

    const/16 v8, 0x400

    if-le v5, v8, :cond_4

    const/16 v5, 0x400

    .line 16
    :cond_4
    new-array v13, v5, [B

    const/4 v14, 0x0

    .line 17
    invoke-virtual {v2, v13, v14, v5}, Ljava/io/InputStream;->read([BII)I

    .line 18
    invoke-virtual {v3, v13}, Lcom/tencent/cos/utils/CommonSha1Utils;->update([B)V

    add-int/2addr v4, v5

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->finish()V

    .line 20
    invoke-virtual {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->digout()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    sget-object v5, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    iget-object v5, v5, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v12, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 23
    sget-object v5, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    iget-object v5, v5, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    sget-object v4, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    iget-object v4, v4, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->digout()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v1, v9, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-static {v2}, Lcom/tencent/cos/utils/FileUtils;->closeFileStream(Ljava/io/InputStream;)V

    .line 27
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 28
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :goto_4
    invoke-static {v2}, Lcom/tencent/cos/utils/FileUtils;->closeFileStream(Ljava/io/InputStream;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
