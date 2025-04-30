.class public Le3/l;
.super Ljava/lang/Object;
.source "Zip64EndCentralDirLocator.java"


# instance fields
.field private a:J

.field private b:I

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le3/l;->b:I

    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/l;->c:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/l;->a:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Le3/l;->d:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/l;->b:I

    return-void
.end method

.method public f(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/l;->c:J

    return-void
.end method

.method public g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/l;->a:J

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/l;->d:I

    return-void
.end method
