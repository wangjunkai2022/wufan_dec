.class abstract Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic g:Lorg/jboss/netty/util/internal/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->g:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->c:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b:I

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b:I

    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->c:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a:I

    if-ltz v0, :cond_3

    .line 5
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->g:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->c:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a:I

    aget-object v0, v1, v0

    .line 6
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->a:I

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->c:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 8
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 9
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->c:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 10
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b:I

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method b()Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    if-eqz v0, :cond_1

    .line 2
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 3
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a()V

    .line 5
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->g:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public rewind()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->g:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->c:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a:I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->c:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 4
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 5
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 6
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->f:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a()V

    return-void
.end method
