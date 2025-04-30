.class public final Lretrofit2/converter/protobuf/a;
.super Lretrofit2/Converter$Factory;
.source "ProtoConverterFactory.java"


# instance fields
.field private final a:Lcom/google/protobuf/ExtensionRegistryLite;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/converter/protobuf/a;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public static a()Lretrofit2/converter/protobuf/a;
    .locals 2

    .line 1
    new-instance v0, Lretrofit2/converter/protobuf/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lretrofit2/converter/protobuf/a;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-object v0
.end method

.method public static b(Lcom/google/protobuf/ExtensionRegistryLite;)Lretrofit2/converter/protobuf/a;
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/converter/protobuf/a;

    invoke-direct {v0, p0}, Lretrofit2/converter/protobuf/a;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    instance-of p2, p1, Ljava/lang/Class;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 2
    :cond_0
    const-class p2, Lcom/google/protobuf/MessageLite;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p3

    .line 3
    :cond_1
    new-instance p1, Lretrofit2/converter/protobuf/b;

    invoke-direct {p1}, Lretrofit2/converter/protobuf/b;-><init>()V

    return-object p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 2
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
    instance-of p2, p1, Ljava/lang/Class;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Class;

    .line 3
    const-class p2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object p3

    :cond_1
    :try_start_0
    const-string p2, "parser"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Parser;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string p2, "PARSER"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Parser;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8
    :goto_0
    new-instance p1, Lretrofit2/converter/protobuf/c;

    iget-object p3, p0, Lretrofit2/converter/protobuf/a;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-direct {p1, p2, p3}, Lretrofit2/converter/protobuf/c;-><init>(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-object p1

    .line 9
    :catch_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found a protobuf message but "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " had no parser() method or PARSER field."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
