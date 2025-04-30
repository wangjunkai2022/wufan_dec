.class public abstract Lcom/sdk/h/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
.end method

.method public a(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getBytes(II[BI)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    :goto_0
    :try_start_0
    move-object p1, p0

    check-cast p1, Lcom/sdk/h/a;

    const/16 p1, 0x48

    const/4 v3, 0x0

    .line 3
    :goto_1
    move-object v4, p0

    check-cast v4, Lcom/sdk/h/a;

    add-int/lit8 v4, v3, 0x4

    const/4 v5, 0x4

    if-ge v4, p1, :cond_0

    move-object v3, p0

    check-cast v3, Lcom/sdk/h/a;

    invoke-virtual {p0, v1, v0, v5}, Lcom/sdk/h/d;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    move-object v3, p0

    check-cast v3, Lcom/sdk/h/a;

    move-object v3, p0

    check-cast v3, Lcom/sdk/h/a;

    move v3, v4

    goto :goto_1

    :cond_0
    move-object v6, p0

    check-cast v6, Lcom/sdk/h/a;

    if-ne v4, p1, :cond_1

    move-object p1, p0

    check-cast p1, Lcom/sdk/h/a;

    invoke-virtual {p0, v1, v0, v5}, Lcom/sdk/h/d;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    move-object p1, p0

    check-cast p1, Lcom/sdk/h/a;

    goto :goto_0

    :cond_1
    rsub-int/lit8 p1, v3, 0x48

    invoke-virtual {p0, v1, v0, p1}, Lcom/sdk/h/d;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Lcom/sdk/h/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
