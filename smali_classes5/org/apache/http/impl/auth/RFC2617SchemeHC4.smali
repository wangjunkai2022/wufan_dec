.class public abstract Lorg/apache/http/impl/auth/RFC2617SchemeHC4;
.super Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;
.source "RFC2617SchemeHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final credentialsCharset:Ljava/nio/charset/Charset;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    sget-object v0, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->params:Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->credentialsCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;-><init>(Lorg/apache/http/auth/ChallengeState;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->params:Ljava/util/Map;

    .line 3
    sget-object p1, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->credentialsCharset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method getCredentialsCharset(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const-string v0, "http.auth.credential-charset"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->getCredentialsCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCredentialsCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->credentialsCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->params:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const-string v0, "realm"

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 1
    sget-object p3, Lorg/apache/http/message/BasicHeaderValueParserHC4;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParserHC4;

    .line 2
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 3
    invoke-interface {p3, p1, v0}, Lorg/apache/http/message/HeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object p1

    .line 4
    array-length p2, p1

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->params:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 6
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object v0, p1, p3

    .line 7
    iget-object v1, p0, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->params:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Lorg/apache/http/auth/MalformedChallengeException;

    const-string p2, "Authentication challenge is empty"

    invoke-direct {p1, p2}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
