.class public Le3/n;
.super Ljava/lang/Object;
.source "Zip64ExtendedInfo.java"


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Le3/n;->c:J

    .line 3
    iput-wide v0, p0, Le3/n;->d:J

    .line 4
    iput-wide v0, p0, Le3/n;->e:J

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Le3/n;->f:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/n;->c:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le3/n;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le3/n;->a:I

    return v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/n;->e:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Le3/n;->b:I

    return v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/n;->d:J

    return-wide v0
.end method

.method public g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/n;->c:J

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/n;->f:I

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/n;->a:I

    return-void
.end method

.method public j(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/n;->e:J

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/n;->b:I

    return-void
.end method

.method public l(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/n;->d:J

    return-void
.end method
