.class public final Lcom/squareup/wire/m;
.super Ljava/lang/Object;
.source "ProtoReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\ncom/squareup/wire/internal/RuntimeUtils\n*L\n1#1,468:1\n1#2:469\n23#3:470\n26#3:471\n23#3:472\n26#3:473\n23#3:474\n26#3:475\n23#3:476\n26#3:477\n23#3:478\n23#3:479\n*E\n*S KotlinDebug\n*F\n+ 1 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n288#1:470\n293#1:471\n295#1:472\n300#1:473\n302#1:474\n307#1:475\n309#1:476\n313#1:477\n343#1:478\n344#1:479\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 52\u00020\u0001:\u0001\u001dB\u000f\u0012\u0006\u00100\u001a\u00020.\u00a2\u0006\u0004\u00083\u00104J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002J\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\tJ\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\tH\u0007J\u0006\u0010\u0010\u001a\u00020\u0002J\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0002J\u0006\u0010\u0018\u001a\u00020\tJ\u0006\u0010\u0019\u001a\u00020\u0002J\u0006\u0010\u001a\u001a\u00020\tJ\'\u0010\u001d\u001a\u00020\r2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u001bH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0002J \u0010\"\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00112\u0008\u0010!\u001a\u0004\u0018\u00010\u0001R\u001c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020$0#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010%R\u0016\u0010(\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\'R\u0016\u0010)\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\'R\u0016\u0010+\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010/R\u0016\u0010\u001f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010*R\u0016\u00101\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010*R\u0016\u00102\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\'\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u00066"
    }
    d2 = {
        "Lcom/squareup/wire/m;",
        "",
        "",
        "expectedEndTag",
        "",
        "s",
        "h",
        "fieldEncoding",
        "c",
        "",
        "d",
        "e",
        "token",
        "Lokio/ByteString;",
        "g",
        "f",
        "i",
        "Lcom/squareup/wire/FieldEncoding;",
        "j",
        "r",
        "k",
        "",
        "n",
        "p",
        "q",
        "l",
        "m",
        "Lkotlin/Function1;",
        "tagHandler",
        "a",
        "(Lkotlin/jvm/functions/Function1;)Lokio/ByteString;",
        "tag",
        "o",
        "value",
        "b",
        "",
        "Lokio/Buffer;",
        "Ljava/util/List;",
        "bufferStack",
        "J",
        "pushedLimit",
        "pos",
        "I",
        "recursionDepth",
        "Lcom/squareup/wire/FieldEncoding;",
        "nextFieldEncoding",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSource;",
        "source",
        "state",
        "limit",
        "<init>",
        "(Lokio/BufferedSource;)V",
        "u",
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
.field private static final j:I = 0x41

.field private static final k:I = 0x7

.field public static final l:I = 0x3

.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x3

.field private static final q:I = 0x4

.field private static final r:I = 0x5

.field private static final s:I = 0x6

.field private static final t:I = 0x7

.field public static final u:Lcom/squareup/wire/m$a;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Lcom/squareup/wire/FieldEncoding;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/m;->u:Lcom/squareup/wire/m$a;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    iput-wide v0, p0, Lcom/squareup/wire/m;->b:J

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/squareup/wire/m;->d:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/squareup/wire/m;->e:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/squareup/wire/m;->f:J

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/m;->h:Ljava/util/List;

    return-void
.end method

.method private final c(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/m;->d:I

    const/4 v1, 0x6

    if-ne v0, p1, :cond_0

    .line 2
    iput v1, p0, Lcom/squareup/wire/m;->d:I

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, p0, Lcom/squareup/wire/m;->a:J

    iget-wide v4, p0, Lcom/squareup/wire/m;->b:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 4
    iget-wide v2, p0, Lcom/squareup/wire/m;->f:J

    iput-wide v2, p0, Lcom/squareup/wire/m;->b:J

    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Lcom/squareup/wire/m;->f:J

    .line 6
    iput v1, p0, Lcom/squareup/wire/m;->d:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    .line 7
    iput p1, p0, Lcom/squareup/wire/m;->d:I

    :goto_0
    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to end at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/squareup/wire/m;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/squareup/wire/m;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final d()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/m;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/squareup/wire/m;->b:J

    iget-wide v2, p0, Lcom/squareup/wire/m;->a:J

    sub-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    const/4 v2, 0x6

    .line 4
    iput v2, p0, Lcom/squareup/wire/m;->d:I

    .line 5
    iget-wide v2, p0, Lcom/squareup/wire/m;->b:J

    iput-wide v2, p0, Lcom/squareup/wire/m;->a:J

    .line 6
    iget-wide v2, p0, Lcom/squareup/wire/m;->f:J

    iput-wide v2, p0, Lcom/squareup/wire/m;->b:J

    const-wide/16 v2, -0x1

    .line 7
    iput-wide v2, p0, Lcom/squareup/wire/m;->f:J

    return-wide v0

    .line 8
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/wire/m;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final h()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 2
    iget-wide v3, p0, Lcom/squareup/wire/m;->a:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/m;->a:J

    .line 3
    iget-object v0, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 4
    iget-object v3, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 5
    iget-wide v3, p0, Lcom/squareup/wire/m;->a:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/m;->a:J

    .line 6
    iget-object v3, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_1

    shl-int/lit8 v1, v3, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v0, v3

    .line 7
    iget-object v3, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 8
    iget-wide v3, p0, Lcom/squareup/wire/m;->a:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/m;->a:J

    .line 9
    iget-object v3, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_2

    shl-int/lit8 v1, v3, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v0, v3

    .line 10
    iget-object v3, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 11
    iget-wide v3, p0, Lcom/squareup/wire/m;->a:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/m;->a:J

    .line 12
    iget-object v3, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_3

    shl-int/lit8 v1, v3, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v0, v3

    .line 13
    iget-object v3, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 14
    iget-wide v3, p0, Lcom/squareup/wire/m;->a:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/m;->a:J

    .line 15
    iget-object v3, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    shl-int/lit8 v4, v3, 0x1c

    or-int/2addr v0, v4

    if-gez v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x4

    :goto_1
    if-gt v3, v4, :cond_5

    .line 16
    iget-object v5, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v5, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 17
    iget-wide v5, p0, Lcom/squareup/wire/m;->a:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/squareup/wire/m;->a:J

    .line 18
    iget-object v5, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    if-ltz v5, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 19
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed VARINT"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method private final s(I)V
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/squareup/wire/m;->a:J

    iget-wide v2, p0, Lcom/squareup/wire/m;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_8

    iget-object v0, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    invoke-direct {p0}, Lcom/squareup/wire/m;->h()I

    move-result v0

    if-eqz v0, :cond_7

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3
    iput v1, p0, Lcom/squareup/wire/m;->d:I

    .line 4
    invoke-virtual {p0}, Lcom/squareup/wire/m;->l()I

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected field encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne v1, p1, :cond_2

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected end group"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    invoke-direct {p0, v1}, Lcom/squareup/wire/m;->s(I)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-direct {p0}, Lcom/squareup/wire/m;->h()I

    move-result v0

    .line 9
    iget-wide v1, p0, Lcom/squareup/wire/m;->a:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/squareup/wire/m;->a:J

    .line 10
    iget-object v0, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 11
    :cond_5
    iput v2, p0, Lcom/squareup/wire/m;->d:I

    .line 12
    invoke-virtual {p0}, Lcom/squareup/wire/m;->m()J

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/squareup/wire/m;->d:I

    .line 14
    invoke-virtual {p0}, Lcom/squareup/wire/m;->q()J

    goto :goto_0

    .line 15
    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected tag 0"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)Lokio/ByteString;
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lokio/ByteString;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-forEachTag"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tagHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/m;->e()J

    move-result-wide v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/wire/m;->i()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/m;->g(J)Lokio/ByteString;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "fieldEncoding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/squareup/wire/n;

    iget-object v1, p0, Lcom/squareup/wire/m;->h:Ljava/util/List;

    iget v2, p0, Lcom/squareup/wire/m;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/BufferedSink;

    invoke-direct {v0, v1}, Lcom/squareup/wire/n;-><init>(Lokio/BufferedSink;)V

    .line 2
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>"

    .line 3
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    return-void
.end method

.method public final e()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/m;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcom/squareup/wire/m;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/wire/m;->c:I

    const/16 v1, 0x41

    if-gt v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/squareup/wire/m;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/wire/m;->h:Ljava/util/List;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    iget-wide v0, p0, Lcom/squareup/wire/m;->f:J

    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Lcom/squareup/wire/m;->f:J

    const/4 v2, 0x6

    .line 6
    iput v2, p0, Lcom/squareup/wire/m;->d:I

    return-wide v0

    .line 7
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wire recursion limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to beginMessage()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "prefer endMessageAndGetUnknownFields()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "endMessageAndGetUnknownFields(token)"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/m;->g(J)Lokio/ByteString;

    return-void
.end method

.method public final g(J)Lokio/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/m;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    iget v0, p0, Lcom/squareup/wire/m;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/wire/m;->c:I

    if-ltz v0, :cond_1

    iget-wide v3, p0, Lcom/squareup/wire/m;->f:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 3
    iget-wide v1, p0, Lcom/squareup/wire/m;->a:J

    iget-wide v3, p0, Lcom/squareup/wire/m;->b:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected to end at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/squareup/wire/m;->b:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/squareup/wire/m;->a:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    :goto_2
    iput-wide p1, p0, Lcom/squareup/wire/m;->b:J

    .line 6
    iget-object p1, p0, Lcom/squareup/wire/m;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokio/Buffer;

    .line 7
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_4

    .line 8
    invoke-virtual {p1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    goto :goto_3

    .line 9
    :cond_4
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :goto_3
    return-object p1

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No corresponding call to beginMessage()"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call to endMessage()"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/m;->d:I

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iput v2, p0, Lcom/squareup/wire/m;->d:I

    .line 3
    iget v0, p0, Lcom/squareup/wire/m;->e:I

    return v0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 4
    :goto_0
    iget-wide v0, p0, Lcom/squareup/wire/m;->a:J

    iget-wide v3, p0, Lcom/squareup/wire/m;->b:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_b

    iget-object v0, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5
    invoke-direct {p0}, Lcom/squareup/wire/m;->h()I

    move-result v0

    if-eqz v0, :cond_a

    shr-int/lit8 v1, v0, 0x3

    .line 6
    iput v1, p0, Lcom/squareup/wire/m;->e:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 7
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/m;->g:Lcom/squareup/wire/FieldEncoding;

    .line 8
    iput v2, p0, Lcom/squareup/wire/m;->d:I

    return v1

    .line 9
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected field encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected end group"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    invoke-direct {p0, v1}, Lcom/squareup/wire/m;->s(I)V

    goto :goto_0

    .line 12
    :cond_4
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/m;->g:Lcom/squareup/wire/FieldEncoding;

    .line 13
    iput v2, p0, Lcom/squareup/wire/m;->d:I

    .line 14
    invoke-direct {p0}, Lcom/squareup/wire/m;->h()I

    move-result v0

    if-ltz v0, :cond_7

    .line 15
    iget-wide v1, p0, Lcom/squareup/wire/m;->f:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_6

    .line 16
    iget-wide v1, p0, Lcom/squareup/wire/m;->b:J

    iput-wide v1, p0, Lcom/squareup/wire/m;->f:J

    .line 17
    iget-wide v3, p0, Lcom/squareup/wire/m;->a:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/squareup/wire/m;->b:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_5

    .line 18
    iget v0, p0, Lcom/squareup/wire/m;->e:I

    return v0

    .line 19
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 20
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 21
    :cond_7
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_8
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/m;->g:Lcom/squareup/wire/FieldEncoding;

    .line 23
    iput v3, p0, Lcom/squareup/wire/m;->d:I

    return v1

    .line 24
    :cond_9
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/m;->g:Lcom/squareup/wire/FieldEncoding;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/squareup/wire/m;->d:I

    return v1

    .line 26
    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected tag 0"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, -0x1

    return v0

    .line 27
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to nextTag()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final j()Lcom/squareup/wire/FieldEncoding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/m;->g:Lcom/squareup/wire/FieldEncoding;

    return-object v0
.end method

.method public final k()Lokio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/m;->d()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 3
    iget-object v2, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final l()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/m;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/wire/m;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    const-wide/16 v2, 0x4

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 4
    iget-wide v2, p0, Lcom/squareup/wire/m;->a:J

    const/4 v0, 0x4

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/wire/m;->a:J

    .line 5
    iget-object v0, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    .line 6
    invoke-direct {p0, v1}, Lcom/squareup/wire/m;->c(I)V

    return v0
.end method

.method public final m()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/m;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected FIXED64 or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/wire/m;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 4
    iget-wide v2, p0, Lcom/squareup/wire/m;->a:J

    const/16 v0, 0x8

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/wire/m;->a:J

    .line 5
    iget-object v0, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v2

    .line 6
    invoke-direct {p0, v1}, Lcom/squareup/wire/m;->c(I)V

    return-wide v2
.end method

.method public final n()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/m;->d()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 3
    iget-object v2, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/m;->j()Lcom/squareup/wire/FieldEncoding;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p0}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/m;->b(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    return-void
.end method

.method public final p()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/m;->d:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/wire/m;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/wire/m;->h()I

    move-result v0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v1}, Lcom/squareup/wire/m;->c(I)V

    return v0
.end method

.method public final q()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/m;->d:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/wire/m;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x40

    if-ge v3, v4, :cond_3

    .line 3
    iget-object v4, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    const-wide/16 v5, 0x1

    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->require(J)V

    .line 4
    iget-wide v7, p0, Lcom/squareup/wire/m;->a:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/squareup/wire/m;->a:J

    .line 5
    iget-object v4, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2

    .line 6
    invoke-direct {p0, v2}, Lcom/squareup/wire/m;->c(I)V

    return-wide v0

    :cond_2
    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 7
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "WireInput encountered a malformed varint"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final r()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/wire/m;->d:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/m;->l()I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to skip()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/squareup/wire/m;->d()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/squareup/wire/m;->i:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/wire/m;->m()J

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/wire/m;->q()J

    :goto_0
    return-void
.end method
