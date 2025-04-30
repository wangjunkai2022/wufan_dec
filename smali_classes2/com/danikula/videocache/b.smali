.class public Lcom/danikula/videocache/b;
.super Ljava/lang/Object;
.source "ByteArraySource.java"

# interfaces
.implements Lcom/danikula/videocache/q;


# instance fields
.field private final a:[B

.field private b:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/danikula/videocache/b;->a:[B

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/danikula/videocache/b;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/danikula/videocache/b;->b:Ljava/io/ByteArrayInputStream;

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    return-void
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/b;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/b;->b:Ljava/io/ByteArrayInputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    return p1
.end method
