.class Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Value"
.end annotation


# static fields
.field static final synthetic f:Z


# instance fields
.field final a:I

.field final b:I

.field final c:D

.field d:J

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(IIID)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->e:I

    .line 9
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->a:I

    .line 10
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->b:I

    .line 11
    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->c:D

    const-wide/high16 p1, -0x8000000000000000L

    .line 12
    iput-wide p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->d:J

    return-void
.end method

.method constructor <init>(IIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->e:I

    .line 3
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->a:I

    .line 4
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->b:I

    .line 5
    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->d:J

    const-wide/16 p1, 0x1

    .line 6
    iput-wide p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->c:D

    return-void
.end method

.method static synthetic a(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->q(II)I

    move-result p0

    return p0
.end method

.method static synthetic b(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->h(II)I

    move-result p0

    return p0
.end method

.method static synthetic c(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)B
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->r()B

    move-result p0

    return p0
.end method

.method static synthetic d(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->s(I)B

    move-result p0

    return p0
.end method

.method static synthetic e(IIJII)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->i(IIJII)I

    move-result p0

    return p0
.end method

.method static f(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    move-object v0, v6

    move v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static g(IZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v4, v0

    const/16 v2, 0x1a

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method private h(II)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->a:I

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->b:I

    iget-wide v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->d:J

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->i(IIJII)I

    move-result p1

    return p1
.end method

.method private static i(IIJII)I
    .locals 5

    .line 1
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->h(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x1

    :goto_0
    const/16 p1, 0x20

    if-gt p0, p1, :cond_2

    .line 2
    invoke-static {p4, p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->q(II)I

    move-result p1

    add-int/2addr p1, p4

    mul-int v0, p5, p0

    add-int/2addr p1, v0

    int-to-long v0, p1

    sub-long/2addr v0, p2

    long-to-int p1, v0

    int-to-long v0, p1

    .line 3
    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(J)I

    move-result p1

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    int-to-long v2, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return p1

    :cond_1
    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method static j(IF)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    float-to-double v4, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIID)V

    return-object v6
.end method

.method static k(ID)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x3

    const/4 v3, 0x3

    move-object v0, v6

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIID)V

    return-object v6
.end method

.method static l(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static m(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static n(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v0, v6

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static o(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method private static p(II)B
    .locals 0

    shl-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private static q(II)I
    .locals 0

    xor-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method private r()B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->s(I)B

    move-result v0

    return v0
.end method

.method private s(I)B
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->t(I)I

    move-result p1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->a:I

    invoke-static {p1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->p(II)B

    move-result p1

    return p1
.end method

.method private t(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->a:I

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->b:I

    return p1
.end method

.method static u(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static v(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static w(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x2

    const/4 v3, 0x3

    move-object v0, v6

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static x(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7

    .line 1
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method
