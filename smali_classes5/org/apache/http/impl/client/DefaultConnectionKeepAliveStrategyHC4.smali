.class public Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategyHC4;
.super Ljava/lang/Object;
.source "DefaultConnectionKeepAliveStrategyHC4.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategyHC4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategyHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategyHC4;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategyHC4;->INSTANCE:Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategyHC4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 2

    const-string p2, "HTTP response"

    .line 1
    invoke-static {p1, p2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance p2, Lorg/apache/http/message/BasicHeaderElementIterator;

    const-string v0, "Keep-Alive"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p2}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "timeout"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    return-wide p1

    :catch_0
    nop

    goto :goto_0

    :cond_1
    const-wide/16 p1, -0x1

    return-wide p1
.end method
