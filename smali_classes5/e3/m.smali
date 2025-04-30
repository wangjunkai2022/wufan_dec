.class public Le3/m;
.super Ljava/lang/Object;
.source "Zip64EndCentralDirRecord.java"


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le3/m;->k:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le3/m;->e:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le3/m;->f:I

    return v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/m;->j:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/m;->a:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/m;->i:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/m;->b:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/m;->h:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/m;->g:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Le3/m;->c:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Le3/m;->d:I

    return v0
.end method

.method public l([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/m;->k:[B

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/m;->e:I

    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/m;->f:I

    return-void
.end method

.method public o(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/m;->j:J

    return-void
.end method

.method public p(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/m;->a:J

    return-void
.end method

.method public q(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/m;->i:J

    return-void
.end method

.method public r(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/m;->b:J

    return-void
.end method

.method public s(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/m;->h:J

    return-void
.end method

.method public t(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/m;->g:J

    return-void
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/m;->c:I

    return-void
.end method

.method public v(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/m;->d:I

    return-void
.end method
