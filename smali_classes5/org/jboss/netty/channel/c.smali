.class public Lorg/jboss/netty/channel/c;
.super Ljava/lang/Object;
.source "AdaptiveReceiveBufferSizePredictor.java"

# interfaces
.implements Lorg/jboss/netty/channel/j0;


# static fields
.field static final f:I = 0x40

.field static final g:I = 0x400

.field static final h:I = 0x10000

.field private static final i:I = 0x4

.field private static final j:I = 0x1

.field private static final k:[I


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v3, 0x4

    :goto_1
    const/16 v4, 0x20

    const/4 v5, 0x0

    if-ge v3, v4, :cond_3

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v3

    ushr-long v8, v6, v1

    const/4 v4, 0x3

    shl-long v10, v8, v4

    sub-long/2addr v6, v10

    :goto_2
    if-ge v5, v2, :cond_2

    add-long/2addr v6, v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v4, v6, v10

    if-lez v4, :cond_1

    const v4, 0x7fffffff

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    long-to-int v4, v6

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lorg/jboss/netty/channel/c;->k:[I

    .line 6
    :goto_4
    sget-object v1, Lorg/jboss/netty/channel/c;->k:[I

    array-length v2, v1

    if-ge v5, v2, :cond_4

    .line 7
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x40

    const/16 v1, 0x400

    const/high16 v2, 0x10000

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/c;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_4

    if-lt p2, p1, :cond_3

    if-lt p3, p2, :cond_2

    .line 3
    invoke-static {p1}, Lorg/jboss/netty/channel/c;->c(I)I

    move-result v0

    .line 4
    sget-object v1, Lorg/jboss/netty/channel/c;->k:[I

    aget v2, v1, v0

    if-ge v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lorg/jboss/netty/channel/c;->a:I

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Lorg/jboss/netty/channel/c;->a:I

    .line 7
    :goto_0
    invoke-static {p3}, Lorg/jboss/netty/channel/c;->c(I)I

    move-result p1

    .line 8
    aget v0, v1, p1

    if-le v0, p3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 9
    iput p1, p0, Lorg/jboss/netty/channel/c;->b:I

    goto :goto_1

    .line 10
    :cond_1
    iput p1, p0, Lorg/jboss/netty/channel/c;->b:I

    .line 11
    :goto_1
    invoke-static {p2}, Lorg/jboss/netty/channel/c;->c(I)I

    move-result p1

    iput p1, p0, Lorg/jboss/netty/channel/c;->c:I

    .line 12
    aget p1, v1, p1

    iput p1, p0, Lorg/jboss/netty/channel/c;->d:I

    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maximum: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initial: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minimum: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static c(I)I
    .locals 3

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, p0

    :cond_1
    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_1

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, -0x12

    add-int/lit8 v0, v0, -0x19

    :goto_0
    if-lt v1, v0, :cond_3

    .line 1
    sget-object v2, Lorg/jboss/netty/channel/c;->k:[I

    aget v2, v2, v1

    if-lt p0, v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2
    :cond_3
    new-instance p0, Ljava/lang/Error;

    const-string v0, "shouldn\'t reach here; please file a bug report."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/c;->d:I

    return v0
.end method

.method public b(I)V
    .locals 4

    .line 1
    sget-object v0, Lorg/jboss/netty/channel/c;->k:[I

    iget v1, p0, Lorg/jboss/netty/channel/c;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v1, v0, v1

    if-gt p1, v1, :cond_1

    .line 2
    iget-boolean p1, p0, Lorg/jboss/netty/channel/c;->e:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lorg/jboss/netty/channel/c;->c:I

    sub-int/2addr p1, v2

    iget v1, p0, Lorg/jboss/netty/channel/c;->a:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/jboss/netty/channel/c;->c:I

    .line 4
    aget p1, v0, p1

    iput p1, p0, Lorg/jboss/netty/channel/c;->d:I

    .line 5
    iput-boolean v3, p0, Lorg/jboss/netty/channel/c;->e:Z

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v2, p0, Lorg/jboss/netty/channel/c;->e:Z

    goto :goto_0

    .line 7
    :cond_1
    iget v1, p0, Lorg/jboss/netty/channel/c;->d:I

    if-lt p1, v1, :cond_2

    .line 8
    iget p1, p0, Lorg/jboss/netty/channel/c;->c:I

    add-int/lit8 p1, p1, 0x4

    iget v1, p0, Lorg/jboss/netty/channel/c;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/jboss/netty/channel/c;->c:I

    .line 9
    aget p1, v0, p1

    iput p1, p0, Lorg/jboss/netty/channel/c;->d:I

    .line 10
    iput-boolean v3, p0, Lorg/jboss/netty/channel/c;->e:Z

    :cond_2
    :goto_0
    return-void
.end method
