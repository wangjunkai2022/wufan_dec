.class public Lm/framework/network/MultiPartInputStream;
.super Ljava/io/InputStream;
.source "MultiPartInputStream.java"


# instance fields
.field private curIs:I

.field private isList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addInputStream(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm/framework/network/MultiPartInputStream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v1, p0, Lm/framework/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm/framework/network/MultiPartInputStream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v1, p0, Lm/framework/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v1, p0, Lm/framework/network/MultiPartInputStream;->curIs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lm/framework/network/MultiPartInputStream;->curIs:I

    .line 5
    iget-object v2, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    :goto_1
    return v0

    .line 6
    :cond_2
    iget-object v0, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v1, p0, Lm/framework/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 7
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lm/framework/network/MultiPartInputStream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v1, p0, Lm/framework/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget v1, p0, Lm/framework/network/MultiPartInputStream;->curIs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lm/framework/network/MultiPartInputStream;->curIs:I

    .line 12
    iget-object v2, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    :goto_1
    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lm/framework/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v1, p0, Lm/framework/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method
