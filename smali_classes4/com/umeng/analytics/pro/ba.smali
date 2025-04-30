.class public Lcom/umeng/analytics/pro/ba;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lcom/umeng/analytics/pro/cc;

.field private c:Lcom/umeng/analytics/pro/bq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/bk$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/bk$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/ba;-><init>(Lcom/umeng/analytics/pro/bs;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/bs;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/ba;->a:Ljava/io/ByteArrayOutputStream;

    .line 4
    new-instance v1, Lcom/umeng/analytics/pro/cc;

    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/umeng/analytics/pro/ba;->b:Lcom/umeng/analytics/pro/cc;

    .line 5
    invoke-interface {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/ce;)Lcom/umeng/analytics/pro/bq;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/ba;->c:Lcom/umeng/analytics/pro/bq;

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/ar;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ax;
        }
    .end annotation

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ba;->a(Lcom/umeng/analytics/pro/ar;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    new-instance p1, Lcom/umeng/analytics/pro/ax;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/ax;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/umeng/analytics/pro/ar;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ax;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/ba;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2
    iget-object v0, p0, Lcom/umeng/analytics/pro/ba;->c:Lcom/umeng/analytics/pro/bq;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/ar;->write(Lcom/umeng/analytics/pro/bq;)V

    .line 3
    iget-object p1, p0, Lcom/umeng/analytics/pro/ba;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/umeng/analytics/pro/ar;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ax;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ba;->a(Lcom/umeng/analytics/pro/ar;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
