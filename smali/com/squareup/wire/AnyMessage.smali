.class public final Lcom/squareup/wire/AnyMessage;
.super Lcom/squareup/wire/Message;
.source "AnyMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/AnyMessage$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000  2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0019\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010\u0006\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\u0008\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u0008\u0010\t\u001a\u00020\u0002H\u0017J\u0013\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u001a\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013R\u0019\u0010\u0012\u001a\u00020\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0019\u0010\u0014\u001a\u00020\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/squareup/wire/AnyMessage;",
        "Lcom/squareup/wire/Message;",
        "",
        "T",
        "Lcom/squareup/wire/ProtoAdapter;",
        "adapter",
        "q",
        "(Lcom/squareup/wire/ProtoAdapter;)Ljava/lang/Object;",
        "r",
        "p",
        "",
        "other",
        "",
        "equals",
        "",
        "hashCode",
        "",
        "toString",
        "typeUrl",
        "Lokio/ByteString;",
        "value",
        "k",
        "f",
        "Ljava/lang/String;",
        "n",
        "()Ljava/lang/String;",
        "g",
        "Lokio/ByteString;",
        "o",
        "()Lokio/ByteString;",
        "<init>",
        "(Ljava/lang/String;Lokio/ByteString;)V",
        "i",
        "b",
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
.field public static final h:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/squareup/wire/AnyMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lcom/squareup/wire/AnyMessage$b;


# instance fields
.field private final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/squareup/wire/AnyMessage$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/AnyMessage$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/AnyMessage;->i:Lcom/squareup/wire/AnyMessage$b;

    .line 1
    new-instance v0, Lcom/squareup/wire/AnyMessage$a;

    .line 2
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 3
    const-class v2, Lcom/squareup/wire/AnyMessage;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    const-string v4, "type.googleapis.com/google.protobuf.Any"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/squareup/wire/AnyMessage$a;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    sput-object v0, Lcom/squareup/wire/AnyMessage;->h:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokio/ByteString;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "typeUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/squareup/wire/AnyMessage;->h:Lcom/squareup/wire/ProtoAdapter;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    iput-object p1, p0, Lcom/squareup/wire/AnyMessage;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/squareup/wire/AnyMessage;->g:Lokio/ByteString;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic l(Lcom/squareup/wire/AnyMessage;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/squareup/wire/AnyMessage;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 1
    iget-object p1, p0, Lcom/squareup/wire/AnyMessage;->f:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 2
    iget-object p2, p0, Lcom/squareup/wire/AnyMessage;->g:Lokio/ByteString;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/AnyMessage;->k(Ljava/lang/String;Lokio/ByteString;)Lcom/squareup/wire/AnyMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/squareup/wire/AnyMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/squareup/wire/AnyMessage;->f:Ljava/lang/String;

    check-cast p1, Lcom/squareup/wire/AnyMessage;

    iget-object v3, p1, Lcom/squareup/wire/AnyMessage;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/squareup/wire/AnyMessage;->g:Lokio/ByteString;

    iget-object p1, p1, Lcom/squareup/wire/AnyMessage;->g:Lokio/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic g()Lcom/squareup/wire/Message$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/AnyMessage;->p()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$a;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->c:I

    if-nez v0, :cond_0

    mul-int/lit8 v0, v0, 0x25

    .line 2
    iget-object v1, p0, Lcom/squareup/wire/AnyMessage;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/squareup/wire/AnyMessage;->g:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iput v0, p0, Lcom/squareup/wire/Message;->c:I

    :cond_0
    return v0
.end method

.method public final k(Ljava/lang/String;Lokio/ByteString;)Lcom/squareup/wire/AnyMessage;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "typeUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/squareup/wire/AnyMessage;

    invoke-direct {v0, p1, p2}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/AnyMessage;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/AnyMessage;->g:Lokio/ByteString;

    return-object v0
.end method

.method public synthetic p()Ljava/lang/Void;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Shouldn\'t be used in Kotlin"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final q(Lcom/squareup/wire/ProtoAdapter;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/AnyMessage;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoAdapter;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/squareup/wire/AnyMessage;->g:Lokio/ByteString;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lokio/ByteString;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/wire/AnyMessage;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoAdapter;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r(Lcom/squareup/wire/ProtoAdapter;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/AnyMessage;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoAdapter;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/wire/AnyMessage;->g:Lokio/ByteString;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lokio/ByteString;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Any{type_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/wire/AnyMessage;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/wire/AnyMessage;->g:Lokio/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
