.class final Lorg/jboss/netty/util/c$a;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Lorg/jboss/netty/util/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# static fields
.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2


# instance fields
.field private final a:Lorg/jboss/netty/util/h;

.field final b:J

.field volatile c:I

.field volatile d:J

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic f:Lorg/jboss/netty/util/c;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/c;Lorg/jboss/netty/util/h;J)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/util/c$a;->f:Lorg/jboss/netty/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/jboss/netty/util/c$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p2, p0, Lorg/jboss/netty/util/c$a;->a:Lorg/jboss/netty/util/h;

    .line 4
    iput-wide p3, p0, Lorg/jboss/netty/util/c$a;->b:J

    return-void
.end method


# virtual methods
.method public a()Lorg/jboss/netty/util/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/c$a;->a:Lorg/jboss/netty/util/h;

    return-object v0
.end method

.method public b()Lorg/jboss/netty/util/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/c$a;->f:Lorg/jboss/netty/util/c;

    return-object v0
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/c$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/c$a;->a:Lorg/jboss/netty/util/h;

    invoke-interface {v0, p0}, Lorg/jboss/netty/util/h;->a(Lorg/jboss/netty/util/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/c$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/c$a;->f:Lorg/jboss/netty/util/c;

    iget-object v0, v0, Lorg/jboss/netty/util/c;->f:[Ljava/util/Set;

    iget v1, p0, Lorg/jboss/netty/util/c$a;->c:I

    aget-object v0, v0, v1

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public isCancelled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/c$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isExpired()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/c$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lorg/jboss/netty/util/c$a;->b:J

    sub-long/2addr v2, v0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    const-class v1, Lorg/jboss/netty/util/c$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "deadline: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 7
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms later, "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    neg-long v1, v2

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms ago, "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "now, "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :goto_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/c$a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", cancelled"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x29

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
