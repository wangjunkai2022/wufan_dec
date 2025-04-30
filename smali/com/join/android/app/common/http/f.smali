.class public Lcom/join/android/app/common/http/f;
.super Lokhttp3/RequestBody;
.source "ProgressRequestBody.java"


# instance fields
.field private final a:Lokhttp3/RequestBody;

.field private final b:Lcom/join/android/app/common/http/g;

.field private c:Lokio/BufferedSink;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/common/http/f;->a:Lokhttp3/RequestBody;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/common/http/f;->b:Lcom/join/android/app/common/http/g;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/common/http/f;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/http/f;)Lcom/join/android/app/common/http/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/http/f;->b:Lcom/join/android/app/common/http/g;

    return-object p0
.end method

.method private b(Lokio/Sink;)Lokio/Sink;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/common/http/f$a;

    invoke-direct {v0, p0, p1}, Lcom/join/android/app/common/http/f$a;-><init>(Lcom/join/android/app/common/http/f;Lokio/Sink;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/f;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/f;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/f;->c:Lokio/BufferedSink;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/android/app/common/http/f;->b(Lokio/Sink;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/http/f;->c:Lokio/BufferedSink;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/common/http/f;->a:Lokhttp3/RequestBody;

    iget-object v0, p0, Lcom/join/android/app/common/http/f;->c:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 4
    iget-object p1, p0, Lcom/join/android/app/common/http/f;->c:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
