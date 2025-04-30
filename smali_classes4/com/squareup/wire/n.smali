.class public final Lcom/squareup/wire/n;
.super Ljava/lang/Object;
.source "ProtoWriter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/n$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00122\u00020\u0001:\u0001\u0005B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006J\u0016\u0010\u000c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0008J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0010R\u0016\u0010\u0016\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/squareup/wire/n;",
        "",
        "Lokio/ByteString;",
        "value",
        "",
        "a",
        "",
        "e",
        "",
        "fieldNumber",
        "Lcom/squareup/wire/FieldEncoding;",
        "fieldEncoding",
        "f",
        "d",
        "(I)V",
        "g",
        "",
        "h",
        "b",
        "c",
        "Lokio/BufferedSink;",
        "Lokio/BufferedSink;",
        "sink",
        "<init>",
        "(Lokio/BufferedSink;)V",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final b:Lcom/squareup/wire/n$a;


# instance fields
.field private final a:Lokio/BufferedSink;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/n;->b:Lcom/squareup/wire/n$a;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSink;)V
    .locals 1
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/n;->a:Lokio/BufferedSink;

    return-void
.end method


# virtual methods
.method public final a(Lokio/ByteString;)V
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/n;->a:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    return-void
.end method

.method public final b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/n;->a:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    return-void
.end method

.method public final c(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/n;->a:Lokio/BufferedSink;

    invoke-interface {v0, p1, p2}, Lokio/BufferedSink;->writeLongLe(J)Lokio/BufferedSink;

    return-void
.end method

.method public final d(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/wire/n;->g(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/n;->h(J)V

    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/n;->a:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    return-void
.end method

.method public final f(ILcom/squareup/wire/FieldEncoding;)V
    .locals 1
    .param p2    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/squareup/wire/n;->b:Lcom/squareup/wire/n$a;

    invoke-static {v0, p1, p2}, Lcom/squareup/wire/n$a;->a(Lcom/squareup/wire/n$a;ILcom/squareup/wire/FieldEncoding;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/n;->g(I)V

    return-void
.end method

.method public final g(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/n;->a:Lokio/BufferedSink;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/n;->a:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method

.method public final h(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/n;->a:Lokio/BufferedSink;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/n;->a:Lokio/BufferedSink;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method
