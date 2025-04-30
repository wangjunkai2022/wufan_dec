.class Lcom/mob/tools/network/NetCommunicator$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/network/NetCommunicator;->a([B[Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/mob/tools/network/NetCommunicator;


# direct methods
.method constructor <init>(Lcom/mob/tools/network/NetCommunicator;[Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/network/NetCommunicator$2;->c:Lcom/mob/tools/network/NetCommunicator;

    iput-object p2, p0, Lcom/mob/tools/network/NetCommunicator$2;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/tools/network/NetCommunicator$2;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/network/HttpConnection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 3
    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 4
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    :goto_1
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_1

    .line 5
    invoke-virtual {v3, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 6
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    if-ne v0, v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/mob/tools/network/NetCommunicator$2;->c:Lcom/mob/tools/network/NetCommunicator;

    invoke-static {v1, p1}, Lcom/mob/tools/network/NetCommunicator;->a(Lcom/mob/tools/network/NetCommunicator;Lcom/mob/tools/network/HttpConnection;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    .line 11
    array-length p1, v2

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/mob/tools/network/NetCommunicator$2;->a:[Ljava/lang/String;

    iget-object v0, p0, Lcom/mob/tools/network/NetCommunicator$2;->c:Lcom/mob/tools/network/NetCommunicator;

    iget-object v1, p0, Lcom/mob/tools/network/NetCommunicator$2;->b:[B

    invoke-static {v0, v1, v2}, Lcom/mob/tools/network/NetCommunicator;->a(Lcom/mob/tools/network/NetCommunicator;[B[B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v7

    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "010bccd0dg^cGce!c[cbef"

    .line 14
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "006ZefYc4ce7cEcbef"

    .line 15
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "005hWcgcgdbcg"

    .line 16
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Illegal content length"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/mob/tools/network/NetCommunicator$NetworkError;

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/tools/network/NetCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {p1, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "010bccdOdg4c+ce:cQcbef"

    .line 19
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/mob/tools/network/NetCommunicator$NetworkError;

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/tools/network/NetCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
