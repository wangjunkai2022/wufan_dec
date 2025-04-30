.class public Lcom/sdk/c/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/c/c;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p3

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const-wide/16 v8, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    int-to-long v13, v2

    if-eqz p2, :cond_0

    const/4 v7, 0x1

    move-object/from16 v2, p2

    check-cast v2, Lcom/sdk/a/e;

    move-wide v3, v13

    move-wide v5, v8

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/sdk/a/e;->a(JJZ)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    move-object/from16 v16, v2

    goto :goto_4

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v10, 0x64

    if-ge v5, v10, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v5, :cond_1

    add-int/lit8 v11, v10, 0x64

    if-ge v11, v5, :cond_4

    move v12, v11

    goto :goto_3

    :cond_4
    move v12, v5

    .line 2
    :goto_3
    new-instance v15, Ljava/lang/String;

    invoke-virtual {v3, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v15, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    array-length v10, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v16, v2

    int-to-long v1, v10

    add-long/2addr v6, v1

    move v10, v11

    move-object/from16 v2, v16

    const/4 v1, 0x0

    goto :goto_2

    :goto_4
    add-long/2addr v8, v6

    if-eqz p2, :cond_5

    const/4 v15, 0x0

    .line 4
    move-object/from16 v10, p2

    check-cast v10, Lcom/sdk/a/e;

    move-wide v11, v13

    move-wide v1, v13

    move-wide v13, v8

    :try_start_3
    invoke-virtual/range {v10 .. v15}, Lcom/sdk/a/e;->a(JJZ)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v3, :cond_6

    goto :goto_5

    :cond_5
    move-wide v1, v13

    :cond_6
    move-wide v13, v1

    move-object/from16 v2, v16

    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v16, v2

    move-wide v1, v13

    :goto_5
    move-wide v13, v8

    if-eqz p2, :cond_8

    const/4 v15, 0x1

    move-object/from16 v10, p2

    check-cast v10, Lcom/sdk/a/e;

    move-wide v11, v1

    :try_start_4
    invoke-virtual/range {v10 .. v15}, Lcom/sdk/a/e;->a(JJZ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v2, v16

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_7
    move-object/from16 v2, v16

    goto :goto_8

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sdk/c/c;->a:Ljava/lang/Boolean;

    const-string v3, "StringDownloadHandler"

    invoke-static {v3, v0, v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    if-nez v2, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1
.end method
