.class Lcom/mob/tools/network/NetworkHelper$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/network/NetworkHelper;->httpPostFilesChecked(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/mob/tools/network/NetworkHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/network/NetworkHelper$4;->b:Lcom/mob/tools/network/NetworkHelper;

    iput-object p2, p0, Lcom/mob/tools/network/NetworkHelper$4;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/network/HttpConnection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "utf-8"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0xc8

    if-eq v0, v7, :cond_3

    const/16 v7, 0x12c

    if-ge v0, v7, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v8, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 7
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    new-array v1, v5, [Ljava/io/Closeable;

    aput-object p1, v1, v4

    aput-object v8, v1, v3

    .line 10
    invoke-static {v1}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "005kWfjfjgefj"

    .line 12
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "0067hi f4fh_f8fehi"

    .line 13
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v6, p1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v8, v6

    :goto_1
    new-array p1, v5, [Ljava/io/Closeable;

    aput-object v6, p1, v4

    aput-object v8, p1, v3

    .line 15
    invoke-static {p1}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 16
    throw v0

    .line 17
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    :try_start_3
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v7, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 19
    :try_start_4
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 20
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :cond_5
    new-array v1, v5, [Ljava/io/Closeable;

    aput-object p1, v1, v4

    aput-object v7, v1, v3

    .line 25
    invoke-static {v1}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 26
    iget-object p1, p0, Lcom/mob/tools/network/NetworkHelper$4;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resp"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_3
    move-exception v0

    move-object v6, p1

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v7, v6

    :goto_4
    new-array p1, v5, [Ljava/io/Closeable;

    aput-object v6, p1, v4

    aput-object v7, p1, v3

    .line 27
    invoke-static {p1}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 28
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
