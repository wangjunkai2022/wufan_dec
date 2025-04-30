.class public final Lcn/com/chinatelecom/account/api/d/b;
.super Lcn/com/chinatelecom/account/api/d/f;


# static fields
.field private static final b:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/chinatelecom/account/api/d/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/com/chinatelecom/account/api/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/com/chinatelecom/account/api/d/b;->b(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/h;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/com/chinatelecom/account/api/d/b;->c(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/h;
    .locals 9

    const-string v0, "-"

    new-instance v1, Lcn/com/chinatelecom/account/api/d/h;

    invoke-direct {v1}, Lcn/com/chinatelecom/account/api/d/h;-><init>()V

    const v2, 0x13881

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcn/com/chinatelecom/account/api/d/f;->a:Landroid/content/Context;

    invoke-static {v5}, Lcn/com/chinatelecom/account/api/e/g;->c(Landroid/content/Context;)Z

    move-result v5

    iget-boolean v6, p4, Lcn/com/chinatelecom/account/api/d/g;->f:Z

    iget-object v7, p4, Lcn/com/chinatelecom/account/api/d/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcn/com/chinatelecom/account/api/d/f;->a(ZLjava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v6, :cond_0

    :try_start_1
    iget-object v7, p4, Lcn/com/chinatelecom/account/api/d/g;->h:Ljava/lang/String;

    iget-object v8, p4, Lcn/com/chinatelecom/account/api/d/g;->g:Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget v7, p4, Lcn/com/chinatelecom/account/api/d/g;->b:I

    if-lez v7, :cond_1

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/d/f;->a()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcn/com/chinatelecom/account/api/d/f;->a:Landroid/content/Context;

    invoke-static {v5, p1}, Lcn/com/chinatelecom/account/api/d/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/com/chinatelecom/account/api/d/f;->e(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0xc8

    const/4 v5, 0x1

    if-ne p2, p3, :cond_5

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iput v4, v1, Lcn/com/chinatelecom/account/api/d/h;->a:I

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v8, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3, v8, v3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_3
    iget-object p3, p0, Lcn/com/chinatelecom/account/api/d/f;->a:Landroid/content/Context;

    invoke-static {p3, p1, v5}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;Z)Lcn/com/chinatelecom/account/api/d/d;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p3, p1, Lcn/com/chinatelecom/account/api/d/d;->a:Ljava/lang/String;

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->c:Ljava/lang/String;

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p3

    iget-object p1, p1, Lcn/com/chinatelecom/account/api/d/d;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    move-object v3, v7

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    move-object v3, v7

    goto/16 :goto_5

    :catch_0
    move-exception p1

    move-object v3, v7

    goto/16 :goto_6

    :catch_1
    move-exception p1

    move-object v3, v7

    goto/16 :goto_7

    :catch_2
    move-exception p1

    move-object v3, v7

    goto/16 :goto_8

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :catch_3
    move-exception p1

    goto/16 :goto_6

    :catch_4
    move-exception p1

    goto/16 :goto_7

    :catch_5
    move-exception p1

    goto/16 :goto_8

    :cond_5
    const/16 p3, 0x12e

    if-ne p2, p3, :cond_9

    :try_start_4
    iget p2, p4, Lcn/com/chinatelecom/account/api/d/g;->b:I

    const/16 p3, 0xa

    if-ge p2, p3, :cond_8

    add-int/2addr p2, v5

    iput p2, p4, Lcn/com/chinatelecom/account/api/d/g;->b:I

    iput-boolean v4, p4, Lcn/com/chinatelecom/account/api/d/g;->f:Z

    const-string p2, "Location"

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/e/a;->a(Ljava/net/HttpURLConnection;)Lcn/com/chinatelecom/account/api/d/d;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p3

    iget-object v7, p1, Lcn/com/chinatelecom/account/api/d/d;->c:Ljava/lang/String;

    invoke-virtual {p3, v7}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    iget-object p3, p1, Lcn/com/chinatelecom/account/api/d/d;->d:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p1, p1, Lcn/com/chinatelecom/account/api/d/d;->d:Ljava/lang/String;

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v5, 0x0

    :cond_7
    sget-object p1, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "method : "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v3, v5, p4}, Lcn/com/chinatelecom/account/api/d/b;->a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/h;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcn/com/chinatelecom/account/api/e/j;->b:[B

    invoke-static {p2}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-Redirect more than 10 times"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string p2, "Redirect more than 10 times"

    :try_start_5
    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const p1, 0x13882

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/com/chinatelecom/account/api/e/j;->c:[B

    invoke-static {v5}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-code : "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "response code \uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {p2, p3, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p2, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    move-object p2, v3

    :goto_2
    if-eqz v3, :cond_a

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_6
    move-exception p1

    goto :goto_4

    :cond_a
    :goto_3
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_9

    :goto_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :catchall_2
    move-exception p1

    move-object p2, v3

    goto :goto_5

    :catch_7
    move-exception p1

    move-object p2, v3

    goto/16 :goto_6

    :catch_8
    move-exception p1

    move-object p2, v3

    goto/16 :goto_7

    :catch_9
    move-exception p1

    move-object p2, v3

    goto/16 :goto_8

    :catchall_3
    move-exception p1

    move-object p2, v3

    const/4 v6, 0x0

    :goto_5
    :try_start_7
    iget-boolean p3, p4, Lcn/com/chinatelecom/account/api/d/g;->e:Z

    if-nez p3, :cond_b

    if-eqz v6, :cond_b

    iput-boolean v4, v1, Lcn/com/chinatelecom/account/api/d/h;->d:Z

    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/j;->b:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throwable : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object v4, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {v2, v4, p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throwable-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v3, :cond_c

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_c
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_9

    :catch_a
    move-exception p1

    move-object p2, v3

    const/4 v6, 0x0

    :goto_6
    :try_start_9
    iget-boolean p3, p4, Lcn/com/chinatelecom/account/api/d/g;->e:Z

    if-nez p3, :cond_d

    if-eqz v6, :cond_d

    iput-boolean v4, v1, Lcn/com/chinatelecom/account/api/d/h;->d:Z

    :cond_d
    const p3, 0x13887

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/j;->h:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object v4, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {v2, v4, p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v3, :cond_e

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_e
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_9

    :catch_b
    move-exception p1

    move-object p2, v3

    const/4 v6, 0x0

    :goto_7
    :try_start_b
    iget-boolean p3, p4, Lcn/com/chinatelecom/account/api/d/g;->e:Z

    if-nez p3, :cond_f

    if-eqz v6, :cond_f

    iput-boolean v4, v1, Lcn/com/chinatelecom/account/api/d/h;->d:Z

    :cond_f
    const p3, 0x13886

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/j;->g:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnknownHostException : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object v4, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {v2, v4, p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownHostException-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v3, :cond_10

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_10
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_9

    :catch_c
    move-exception p1

    move-object p2, v3

    const/4 v6, 0x0

    :goto_8
    :try_start_d
    iget-boolean p3, p4, Lcn/com/chinatelecom/account/api/d/g;->e:Z

    if-nez p3, :cond_11

    if-eqz v6, :cond_11

    iput-boolean v4, v1, Lcn/com/chinatelecom/account/api/d/h;->d:Z

    :cond_11
    const p3, 0x13885

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/j;->f:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SocketTimeoutException : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object v2, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {v0, v2, p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STE_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v3, :cond_12

    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :cond_13
    :goto_9
    return-object v1

    :catchall_4
    move-exception p1

    if-eqz v3, :cond_14

    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_a

    :catch_d
    move-exception p2

    goto :goto_b

    :cond_14
    :goto_a
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_c

    :goto_b
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_15
    :goto_c
    goto :goto_e

    :goto_d
    throw p1

    :goto_e
    goto :goto_d
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/h;
    .locals 8

    const-string v0, "-"

    new-instance v1, Lcn/com/chinatelecom/account/api/d/h;

    invoke-direct {v1}, Lcn/com/chinatelecom/account/api/d/h;-><init>()V

    const v2, 0x13881

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/com/chinatelecom/account/api/d/f;->d(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p2, p3, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iput v4, v1, Lcn/com/chinatelecom/account/api/d/h;->a:I

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3, v4, v3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1
    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object v4, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {p3, v4, v3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p3, p0, Lcn/com/chinatelecom/account/api/d/f;->a:Landroid/content/Context;

    invoke-static {p3, p1, v5}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;Z)Lcn/com/chinatelecom/account/api/d/d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p3, p1, Lcn/com/chinatelecom/account/api/d/d;->a:Ljava/lang/String;

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->c:Ljava/lang/String;

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p3

    iget-object p1, p1, Lcn/com/chinatelecom/account/api/d/d;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v3, v6

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    move-object v3, v6

    goto/16 :goto_6

    :catch_0
    move-exception p1

    move-object v3, v6

    goto/16 :goto_7

    :catch_1
    move-exception p1

    move-object v3, v6

    goto/16 :goto_8

    :catch_2
    move-exception p1

    move-object v3, v6

    goto/16 :goto_9

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :catch_3
    move-exception p1

    goto/16 :goto_7

    :catch_4
    move-exception p1

    goto/16 :goto_8

    :catch_5
    move-exception p1

    goto/16 :goto_9

    :cond_3
    const/16 p3, 0x12e

    if-ne p2, p3, :cond_7

    :try_start_3
    iget p2, p4, Lcn/com/chinatelecom/account/api/d/g;->b:I

    const/16 p3, 0xa

    if-ge p2, p3, :cond_6

    add-int/2addr p2, v5

    iput p2, p4, Lcn/com/chinatelecom/account/api/d/g;->b:I

    iput-boolean v4, p4, Lcn/com/chinatelecom/account/api/d/g;->f:Z

    const-string p2, "Location"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/e/a;->a(Ljava/net/HttpURLConnection;)Lcn/com/chinatelecom/account/api/d/d;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p3

    iget-object v6, p1, Lcn/com/chinatelecom/account/api/d/d;->c:Ljava/lang/String;

    invoke-virtual {p3, v6}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    iget-object p3, p1, Lcn/com/chinatelecom/account/api/d/d;->d:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p1, p1, Lcn/com/chinatelecom/account/api/d/d;->d:Ljava/lang/String;

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    :cond_5
    :goto_1
    sget-object p1, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " method : "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v3, v4, p4}, Lcn/com/chinatelecom/account/api/d/b;->a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/h;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcn/com/chinatelecom/account/api/e/j;->b:[B

    invoke-static {p2}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-Redirect more than 10 times"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string p2, "Redirect more than 10 times"

    :try_start_4
    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const p1, 0x13882

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/j;->c:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-code : "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " Http response code :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {p2, p3, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p2, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_2
    move-object p2, v3

    :goto_3
    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    :catch_6
    move-exception p1

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_a

    :goto_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catchall_2
    move-exception p1

    move-object p2, v3

    :goto_6
    :try_start_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/j;->b:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throwable-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Throwable \uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p4, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_9

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_a

    :catch_7
    move-exception p1

    move-object p2, v3

    :goto_7
    const p3, 0x13887

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/j;->h:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException \uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p4, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_a

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_a

    :catch_8
    move-exception p1

    move-object p2, v3

    :goto_8
    const p3, 0x13886

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/j;->g:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownHostException-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UnknownHostException \uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p4, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v3, :cond_b

    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_b
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_a

    :catch_9
    move-exception p1

    move-object p2, v3

    :goto_9
    const p3, 0x13885

    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/j;->f:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SocketTimeoutException-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SocketTimeoutException \uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p4, v1, Lcn/com/chinatelecom/account/api/d/h;->b:Lorg/json/JSONObject;

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v3, :cond_c

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_d
    :goto_a
    return-object v1

    :catchall_3
    move-exception p1

    if-eqz v3, :cond_e

    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_b

    :catch_a
    move-exception p2

    goto :goto_c

    :cond_e
    :goto_b
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_d

    :goto_c
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_d
    goto :goto_f

    :goto_e
    throw p1

    :goto_f
    goto :goto_e
.end method
