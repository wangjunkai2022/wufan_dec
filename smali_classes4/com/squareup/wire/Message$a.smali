.class public abstract Lcom/squareup/wire/Message$a;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$a<",
        "TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000*\u0014\u0008\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0001*\u0014\u0008\u0003\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\u00020\u0005B\t\u0008\u0004\u00a2\u0006\u0004\u0008)\u0010*J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\u0006\u0010\t\u001a\u00020\u0008J,\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003J\u0006\u0010\u0012\u001a\u00020\u0008J\u000f\u0010\u0013\u001a\u00028\u0002H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001a\u001a\u00020\u00088\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R$\u0010!\u001a\u0004\u0018\u00010\u001b8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010(\u001a\u0004\u0018\u00010\"8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "com/squareup/wire/Message$a",
        "Lcom/squareup/wire/Message;",
        "M",
        "Lcom/squareup/wire/Message$a;",
        "B",
        "",
        "",
        "i",
        "Lokio/ByteString;",
        "unknownFields",
        "b",
        "",
        "tag",
        "Lcom/squareup/wire/FieldEncoding;",
        "fieldEncoding",
        "value",
        "a",
        "e",
        "d",
        "c",
        "()Lcom/squareup/wire/Message;",
        "Lokio/ByteString;",
        "g",
        "()Lokio/ByteString;",
        "k",
        "(Lokio/ByteString;)V",
        "unknownFieldsByteString",
        "Lcom/squareup/wire/n;",
        "Lcom/squareup/wire/n;",
        "h",
        "()Lcom/squareup/wire/n;",
        "l",
        "(Lcom/squareup/wire/n;)V",
        "unknownFieldsWriter",
        "Lokio/Buffer;",
        "Lokio/Buffer;",
        "f",
        "()Lokio/Buffer;",
        "j",
        "(Lokio/Buffer;)V",
        "unknownFieldsBuffer",
        "<init>",
        "()V",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private transient a:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transient b:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient c:Lcom/squareup/wire/n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    return-void
.end method

.method private final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 3
    new-instance v0, Lcom/squareup/wire/n;

    iget-object v1, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/squareup/wire/n;-><init>(Lokio/BufferedSink;)V

    iput-object v0, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/n;

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/n;->a(Lokio/ByteString;)V

    .line 5
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$a;
    .locals 1
    .param p2    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/Message$a;->i()V

    .line 2
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/n;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final b(Lokio/ByteString;)Lcom/squareup/wire/Message$a;
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            ")",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unknownFields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/squareup/wire/Message$a;->i()V

    .line 3
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/n;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/squareup/wire/n;->a(Lokio/ByteString;)V

    :cond_0
    return-object p0
.end method

.method public abstract c()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final d()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 4
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/n;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    return-object v0
.end method

.method public final e()Lcom/squareup/wire/Message$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    .line 2
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 4
    iput-object v1, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 5
    :cond_0
    iput-object v1, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/n;

    return-object p0
.end method

.method public final f()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    return-object v0
.end method

.method public final g()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    return-object v0
.end method

.method public final h()Lcom/squareup/wire/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/n;

    return-object v0
.end method

.method public final j(Lokio/Buffer;)V
    .locals 0
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    return-void
.end method

.method public final k(Lokio/ByteString;)V
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    return-void
.end method

.method public final l(Lcom/squareup/wire/n;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/n;

    return-void
.end method
