.class Lcom/join/android/app/common/http/f$a;
.super Lokio/ForwardingSink;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/f;->b(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field b:J

.field final synthetic c:Lcom/join/android/app/common/http/f;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/f;Lokio/Sink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/f$a;->c:Lcom/join/android/app/common/http/f;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/join/android/app/common/http/f$a;->a:J

    .line 3
    iput-wide p1, p0, Lcom/join/android/app/common/http/f$a;->b:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 2
    iget-wide v0, p0, Lcom/join/android/app/common/http/f$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/android/app/common/http/f$a;->c:Lcom/join/android/app/common/http/f;

    invoke-virtual {p1}, Lcom/join/android/app/common/http/f;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/android/app/common/http/f$a;->b:J

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/join/android/app/common/http/f$a;->a:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/join/android/app/common/http/f$a;->a:J

    .line 5
    iget-object p1, p0, Lcom/join/android/app/common/http/f$a;->c:Lcom/join/android/app/common/http/f;

    invoke-static {p1}, Lcom/join/android/app/common/http/f;->a(Lcom/join/android/app/common/http/f;)Lcom/join/android/app/common/http/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/join/android/app/common/http/f$a;->a:J

    iget-wide v3, p0, Lcom/join/android/app/common/http/f$a;->b:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object p1, p0, Lcom/join/android/app/common/http/f$a;->c:Lcom/join/android/app/common/http/f;

    iget-object v6, p1, Lcom/join/android/app/common/http/f;->d:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/join/android/app/common/http/g;->onRequestProgress(JJZLjava/lang/String;)V

    return-void
.end method
