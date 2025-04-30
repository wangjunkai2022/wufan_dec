.class public Lorg/apache/http/impl/client/DefaultRedirectStrategy;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategy.java"

# interfaces
.implements Lorg/apache/http/client/RedirectStrategy;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/client/DefaultRedirectStrategy;

.field public static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final REDIRECT_METHODS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HttpClient"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/http/impl/client/DefaultRedirectStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->INSTANCE:Lorg/apache/http/impl/client/DefaultRedirectStrategy;

    const-string v0, "GET"

    const-string v1, "HEAD"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->REDIRECT_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createLocationURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/http/client/utils/URIBuilder;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    .line 2
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/"

    .line 6
    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setPath(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 7
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid redirect URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLocationURI(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    const-string v0, "HTTP request"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP response"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 3
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    const-string v1, "location"

    .line 5
    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 6
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    const-string v2, "HttpClient"

    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "\'"

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect requested to location \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v1

    .line 10
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->createLocationURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 11
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_2

    .line 12
    invoke-virtual {v1}, Lorg/apache/http/client/config/RequestConfig;->isRelativeRedirectsAllowed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {v0}, Lorg/apache/http/protocol/HttpCoreContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    const-string v4, "Target host"

    .line 14
    invoke-static {v3, v4}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v4, Ljava/net/URI;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 16
    invoke-static {v4, v3, p1}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object p1

    .line 17
    invoke-static {p1, p2}, Lorg/apache/http/client/utils/URIUtilsHC4;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Lorg/apache/http/ProtocolException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Relative redirect location \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' not allowed"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const-string p1, "http.protocol.redirect-locations"

    .line 19
    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/RedirectLocationsHC4;

    if-nez v0, :cond_3

    .line 20
    new-instance v0, Lorg/apache/http/impl/client/RedirectLocationsHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/client/RedirectLocationsHC4;-><init>()V

    .line 21
    invoke-interface {p3, p1, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    :cond_3
    invoke-virtual {v1}, Lorg/apache/http/client/config/RequestConfig;->isCircularRedirectsAllowed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 23
    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/RedirectLocationsHC4;->contains(Ljava/net/URI;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 24
    :cond_4
    new-instance p1, Lorg/apache/http/client/CircularRedirectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Circular redirect to \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_5
    :goto_1
    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/RedirectLocationsHC4;->add(Ljava/net/URI;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Lorg/apache/http/ProtocolException;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 27
    :cond_6
    new-instance p1, Lorg/apache/http/ProtocolException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received redirect response "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " but no location header"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->getLocationURI(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object p3

    .line 2
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Lorg/apache/http/client/methods/HttpHeadHC4;

    invoke-direct {p1, p3}, Lorg/apache/http/client/methods/HttpHeadHC4;-><init>(Ljava/net/URI;)V

    return-object p1

    :cond_0
    const-string v1, "GET"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance p1, Lorg/apache/http/client/methods/HttpGetHC4;

    invoke-direct {p1, p3}, Lorg/apache/http/client/methods/HttpGetHC4;-><init>(Ljava/net/URI;)V

    return-object p1

    .line 7
    :cond_1
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    const/16 v0, 0x133

    if-ne p2, v0, :cond_2

    .line 8
    invoke-static {p1}, Lorg/apache/http/client/methods/RequestBuilder;->copy(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/http/client/methods/RequestBuilder;->setUri(Ljava/net/URI;)Lorg/apache/http/client/methods/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/client/methods/RequestBuilder;->build()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Lorg/apache/http/client/methods/HttpGetHC4;

    invoke-direct {p1, p3}, Lorg/apache/http/client/methods/HttpGetHC4;-><init>(Ljava/net/URI;)V

    return-object p1
.end method

.method protected isRedirectable(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->REDIRECT_METHODS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isRedirected(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    const-string p3, "HTTP request"

    .line 1
    invoke-static {p1, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "HTTP response"

    .line 2
    invoke-static {p2, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    .line 4
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "location"

    .line 5
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    const/16 v0, 0x133

    if-eq p3, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    return v0

    :pswitch_0
    return v1

    .line 6
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->isRedirectable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 7
    :cond_1
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->isRedirectable(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
