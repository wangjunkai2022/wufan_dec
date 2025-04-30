.class public Lcom/join/android/app/common/utils/JsonMapper;
.super Lcom/fasterxml/jackson/databind/ObjectMapper;
.source "JsonMapper.java"


# static fields
.field private static mapper:Lcom/join/android/app/common/utils/JsonMapper; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->initJsonMapper(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    :cond_0
    return-void
.end method

.method public static defaultAll()Lcom/join/android/app/common/utils/JsonMapper;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/common/utils/JsonMapper;->mapper:Lcom/join/android/app/common/utils/JsonMapper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/android/app/common/utils/JsonMapper;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;-><init>(Z)V

    sput-object v0, Lcom/join/android/app/common/utils/JsonMapper;->mapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 3
    :cond_0
    sget-object v0, Lcom/join/android/app/common/utils/JsonMapper;->mapper:Lcom/join/android/app/common/utils/JsonMapper;

    return-object v0
.end method

.method public static getInstance()Lcom/join/android/app/common/utils/JsonMapper;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/common/utils/JsonMapper;->mapper:Lcom/join/android/app/common/utils/JsonMapper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/android/app/common/utils/JsonMapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;-><init>(Z)V

    sput-object v0, Lcom/join/android/app/common/utils/JsonMapper;->mapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 3
    :cond_0
    sget-object v0, Lcom/join/android/app/common/utils/JsonMapper;->mapper:Lcom/join/android/app/common/utils/JsonMapper;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/common/utils/JsonMapper;->mapper:Lcom/join/android/app/common/utils/JsonMapper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/android/app/common/utils/JsonMapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;-><init>(Z)V

    sput-object v0, Lcom/join/android/app/common/utils/JsonMapper;->mapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 3
    :cond_0
    sget-object v0, Lcom/join/android/app/common/utils/JsonMapper;->mapper:Lcom/join/android/app/common/utils/JsonMapper;

    return-object v0
.end method

.method public static toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public enableEnumUseToString()Lcom/join/android/app/common/utils/JsonMapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object p0
.end method

.method public enableJaxbAnnotation()Lcom/join/android/app/common/utils/JsonMapper;
    .locals 0

    return-object p0
.end method

.method public enableSimple()Lcom/join/android/app/common/utils/JsonMapper;
    .locals 2

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object p0
.end method

.method public fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 10
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "parse json string error:"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    .line 11
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "parse json string error:"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "parse json string error:"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-object v1
.end method

.method public getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 0

    return-object p0
.end method

.method public initJsonMapper(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/android/app/common/utils/JsonMapper;->enableSimple()Lcom/join/android/app/common/utils/JsonMapper;

    .line 3
    sget-object p1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializerProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object p1

    new-instance v0, Lcom/join/android/app/common/utils/JsonMapper$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper$a;-><init>(Lcom/join/android/app/common/utils/JsonMapper;)V

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->setNullValueSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "write to json string error:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toJsonP(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/util/JSONPObject;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/JSONPObject;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
