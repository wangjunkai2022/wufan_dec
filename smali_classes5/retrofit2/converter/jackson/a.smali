.class public final Lretrofit2/converter/jackson/a;
.super Lretrofit2/Converter$Factory;
.source "JacksonConverterFactory.java"


# instance fields
.field private final a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/converter/jackson/a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public static a()Lretrofit2/converter/jackson/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-static {v0}, Lretrofit2/converter/jackson/a;->b(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lretrofit2/converter/jackson/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lretrofit2/converter/jackson/a;
    .locals 1

    const-string v0, "mapper == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lretrofit2/converter/jackson/a;

    invoke-direct {v0, p0}, Lretrofit2/converter/jackson/a;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lretrofit2/converter/jackson/a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lretrofit2/converter/jackson/a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writerFor(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p1

    .line 3
    new-instance p2, Lretrofit2/converter/jackson/b;

    invoke-direct {p2, p1}, Lretrofit2/converter/jackson/b;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;)V

    return-object p2
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lretrofit2/converter/jackson/a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lretrofit2/converter/jackson/a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerFor(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    .line 3
    new-instance p2, Lretrofit2/converter/jackson/c;

    invoke-direct {p2, p1}, Lretrofit2/converter/jackson/c;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;)V

    return-object p2
.end method
