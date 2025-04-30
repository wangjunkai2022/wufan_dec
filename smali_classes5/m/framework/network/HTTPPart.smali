.class public abstract Lm/framework/network/HTTPPart;
.super Ljava/lang/Object;
.source "HTTPPart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lm/framework/network/HTTPPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lm/framework/network/HTTPPart;->length()J

    move-result-wide v1

    .line 3
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-object v3
.end method

.method protected abstract length()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
