.class public Lorg/apache/http/pool/PoolStats;
.super Ljava/lang/Object;
.source "PoolStats.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final available:I

.field private final leased:I

.field private final max:I

.field private final pending:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/http/pool/PoolStats;->leased:I

    .line 3
    iput p2, p0, Lorg/apache/http/pool/PoolStats;->pending:I

    .line 4
    iput p3, p0, Lorg/apache/http/pool/PoolStats;->available:I

    .line 5
    iput p4, p0, Lorg/apache/http/pool/PoolStats;->max:I

    return-void
.end method


# virtual methods
.method public getAvailable()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->available:I

    return v0
.end method

.method public getLeased()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->leased:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->max:I

    return v0
.end method

.method public getPending()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->pending:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[leased: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->leased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; pending: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->pending:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; available: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->available:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; max: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
