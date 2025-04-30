.class public final Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;
.super Ljava/lang/Object;
.source "WebSocketExtensionUtil.java"


# static fields
.field private static final EXTENSION_SEPARATOR:Ljava/lang/String; = ","

.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final PARAMETER_EQUAL:C = '='

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = ";"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^([^=]+)(=[\\\"]?([^\\\"]+)[\\\"]?)?$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const-string p2, ";"

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 p2, 0x3d

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractExtensions(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    if-lez v0, :cond_4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    const-string v5, ";"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 7
    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 8
    new-instance v6, Ljava/util/HashMap;

    array-length v8, v4

    sub-int/2addr v8, v7

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(I)V

    const/4 v8, 0x1

    .line 9
    :goto_1
    array-length v9, v4

    if-ge v8, v9, :cond_2

    .line 10
    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 11
    sget-object v10, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 12
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 13
    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 15
    :cond_2
    new-instance v4, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    invoke-direct {v4, v5, v6}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 16
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static isWebsocketUpgrade(Lio/netty/handler/codec/http/HttpHeaders;)Z
    .locals 3

    .line 1
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->UPGRADE:Lio/netty/util/AsciiString;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->WEBSOCKET:Lio/netty/util/AsciiString;

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
