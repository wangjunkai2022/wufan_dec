.class public Lio/netty/util/DefaultAttributeMap;
.super Ljava/lang/Object;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lio/netty/util/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x4

.field private static final MASK:I = 0x3

.field private static final updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/DefaultAttributeMap;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/netty/util/DefaultAttributeMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const-string v2, "attributes"

    .line 2
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static index(Lio/netty/util/AttributeKey;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/AttributeKey<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/util/AbstractConstant;->id()I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method


# virtual methods
.method public attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)",
            "Lio/netty/util/Attribute<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 4
    sget-object v2, Lio/netty/util/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    :cond_0
    invoke-static {p1}, Lio/netty/util/DefaultAttributeMap;->index(Lio/netty/util/AttributeKey;)I

    move-result v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    if-nez v3, :cond_2

    .line 8
    new-instance v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v3}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>()V

    .line 9
    new-instance v4, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v4, v3, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V

    .line 10
    invoke-static {v3, v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$002(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 11
    invoke-static {v4, v3}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$102(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 12
    invoke-virtual {v0, v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v4

    .line 13
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 14
    :cond_2
    monitor-enter v3

    move-object v0, v3

    .line 15
    :goto_0
    :try_start_0
    invoke-static {v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v1

    if-nez v1, :cond_3

    .line 16
    new-instance v1, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v1, v3, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V

    .line 17
    invoke-static {v0, v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$002(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 18
    invoke-static {v1, v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$102(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 19
    monitor-exit v3

    return-object v1

    .line 20
    :cond_3
    invoke-static {v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$200(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v0

    if-ne v0, p1, :cond_4

    invoke-static {v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$300(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    monitor-exit v3

    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public hasAttr(Lio/netty/util/AttributeKey;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {p1}, Lio/netty/util/DefaultAttributeMap;->index(Lio/netty/util/AttributeKey;)I

    move-result v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    .line 7
    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$200(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v3

    if-ne v3, p1, :cond_2

    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$300(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p1, 0x1

    .line 8
    monitor-exit v0

    return p1

    .line 9
    :cond_2
    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
