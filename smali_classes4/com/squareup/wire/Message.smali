.class public abstract Lcom/squareup/wire/Message;
.super Ljava/lang/Object;
.source "Message.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/Message$a;,
        Lcom/squareup/wire/Message$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$a<",
        "TM;TB;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008&\u0018\u0000 \u0014*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u00020\u0004:\u0002\u001a\u0017B\u001f\u0008\u0004\u0012\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018\u0012\u0006\u0010(\u001a\u00020\u0013\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010\u0005\u001a\u00028\u0001H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0004J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015R\u001f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00188\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001d8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u001eR\"\u0010$\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u001e\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0019\u0010(\u001a\u00020\u00138G@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010%\u001a\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/squareup/wire/Message;",
        "M",
        "Lcom/squareup/wire/Message$a;",
        "B",
        "Ljava/io/Serializable;",
        "g",
        "()Lcom/squareup/wire/Message$a;",
        "j",
        "()Lcom/squareup/wire/Message;",
        "",
        "toString",
        "",
        "writeReplace",
        "Lokio/BufferedSink;",
        "sink",
        "",
        "c",
        "",
        "d",
        "Lokio/ByteString;",
        "e",
        "Ljava/io/OutputStream;",
        "stream",
        "b",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/squareup/wire/ProtoAdapter;",
        "a",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "adapter",
        "",
        "I",
        "hashCode",
        "f",
        "()I",
        "h",
        "(I)V",
        "cachedSerializedSize",
        "Lokio/ByteString;",
        "i",
        "()Lokio/ByteString;",
        "unknownFields",
        "<init>",
        "(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V",
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
.field public static final e:Lcom/squareup/wire/Message$b;

.field private static final serialVersionUID:J


# instance fields
.field private final transient a:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transient b:I

.field protected transient c:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private final transient d:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/Message$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/Message$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/Message;->e:Lcom/squareup/wire/Message$b;

    return-void
.end method

.method protected constructor <init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/Message;->d:Lcom/squareup/wire/ProtoAdapter;

    .line 2
    iput-object p2, p0, Lcom/squareup/wire/Message;->a:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "adapter"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message;->d:Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method

.method public final b(Ljava/io/OutputStream;)V
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message;->d:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(Ljava/io/OutputStream;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lokio/BufferedSink;)V
    .locals 1
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message;->d:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/squareup/wire/ProtoAdapter;->j(Lokio/BufferedSink;Ljava/lang/Object;)V

    return-void
.end method

.method public final d()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message;->d:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->k(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final e()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message;->d:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->l(Ljava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->b:I

    return v0
.end method

.method public abstract g()Lcom/squareup/wire/Message$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/squareup/wire/Message;->b:I

    return-void
.end method

.method public final i()Lokio/ByteString;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "unknownFields"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message;->a:Lokio/ByteString;

    if-nez v0, :cond_0

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_0
    return-object v0
.end method

.method public final j()Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->g()Lcom/squareup/wire/Message$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/Message$a;->e()Lcom/squareup/wire/Message$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/Message$a;->c()Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message;->d:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->F(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/squareup/wire/MessageSerializedForm;

    invoke-virtual {p0}, Lcom/squareup/wire/Message;->d()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/MessageSerializedForm;-><init>([BLjava/lang/Class;)V

    return-object v0
.end method
