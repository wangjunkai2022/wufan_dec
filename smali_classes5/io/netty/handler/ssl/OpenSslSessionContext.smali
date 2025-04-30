.class public abstract Lio/netty/handler/ssl/OpenSslSessionContext;
.super Ljava/lang/Object;
.source "OpenSslSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslSessionContext$EmptyEnumeration;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field final context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

.field private final provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

.field private final stats:Lio/netty/handler/ssl/OpenSslSessionStats;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/netty/handler/ssl/OpenSslSessionContext$EmptyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/OpenSslSessionContext$EmptyEnumeration;-><init>(Lio/netty/handler/ssl/OpenSslSessionContext$a;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslSessionContext;->EMPTY:Ljava/util/Enumeration;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 3
    iput-object p2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    .line 4
    new-instance p2, Lio/netty/handler/ssl/OpenSslSessionStats;

    invoke-direct {p2, p1}, Lio/netty/handler/ssl/OpenSslSessionStats;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V

    iput-object p2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->stats:Lio/netty/handler/ssl/OpenSslSessionStats;

    return-void
.end method


# virtual methods
.method final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    :cond_0
    return-void
.end method

.method public getIds()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/ssl/OpenSslSessionContext;->EMPTY:Ljava/util/Enumeration;

    return-object v0
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 1

    const-string v0, "bytes"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract isSessionCacheEnabled()Z
.end method

.method public abstract setSessionCacheEnabled(Z)V
.end method

.method public setTicketKeys([B)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_1

    .line 2
    array-length v0, p1

    div-int/lit8 v0, v0, 0x30

    new-array v1, v0, [Lio/netty/internal/tcnative/SessionTicketKey;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/16 v4, 0x10

    .line 3
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    add-int/2addr v3, v4

    .line 4
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    add-int/lit8 v2, v2, 0x10

    .line 5
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    add-int/2addr v3, v4

    .line 6
    new-instance v4, Lio/netty/internal/tcnative/SessionTicketKey;

    invoke-direct {v4, v5, v6, v7}, Lio/netty/internal/tcnative/SessionTicketKey;-><init>([B[B[B)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object p1, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSLContext;->clearOptions(JI)V

    .line 10
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v2, v3, v1}, Lio/netty/internal/tcnative/SSLContext;->setSessionTicketKeys(J[Lio/netty/internal/tcnative/SessionTicketKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    throw v0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "keys.length % 48 != 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public varargs setTicketKeys([Lio/netty/handler/ssl/OpenSslSessionTicketKey;)V
    .locals 4

    const-string v0, "keys"

    .line 14
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    array-length v0, p1

    new-array v1, v0, [Lio/netty/internal/tcnative/SessionTicketKey;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 16
    aget-object v3, p1, v2

    iget-object v3, v3, Lio/netty/handler/ssl/OpenSslSessionTicketKey;->key:Lio/netty/internal/tcnative/SessionTicketKey;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object p1, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 19
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSLContext;->clearOptions(JI)V

    .line 20
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v2, v3, v1}, Lio/netty/internal/tcnative/SSLContext;->setSessionTicketKeys(J[Lio/netty/internal/tcnative/SessionTicketKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public stats()Lio/netty/handler/ssl/OpenSslSessionStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->stats:Lio/netty/handler/ssl/OpenSslSessionStats;

    return-object v0
.end method
