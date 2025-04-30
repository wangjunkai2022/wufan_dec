.class final Lretrofit2/converter/jackson/b;
.super Ljava/lang/Object;
.source "JacksonRequestBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lokhttp3/MediaType;


# instance fields
.field private final a:Lcom/fasterxml/jackson/databind/ObjectWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lretrofit2/converter/jackson/b;->b:Lokhttp3/MediaType;

    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/converter/jackson/b;->a:Lcom/fasterxml/jackson/databind/ObjectWriter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lokhttp3/RequestBody;
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
    iget-object v0, p0, Lretrofit2/converter/jackson/b;->a:Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object p1

    .line 2
    sget-object v0, Lretrofit2/converter/jackson/b;->b:Lokhttp3/MediaType;

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
    invoke-virtual {p0, p1}, Lretrofit2/converter/jackson/b;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method
