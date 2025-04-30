.class final Lretrofit2/converter/protobuf/b;
.super Ljava/lang/Object;
.source "ProtoRequestBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-protobuf"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lretrofit2/converter/protobuf/b;->a:Lokhttp3/MediaType;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/MessageLite;)Lokhttp3/RequestBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p1

    .line 2
    sget-object v0, Lretrofit2/converter/protobuf/b;->a:Lokhttp3/MediaType;

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p0, p1}, Lretrofit2/converter/protobuf/b;->a(Lcom/google/protobuf/MessageLite;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method
