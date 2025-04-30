.class public Le3/h;
.super Ljava/lang/Object;
.source "FileHeader.java"


# instance fields
.field private A:Ljava/util/ArrayList;

.field private B:Z

.field private a:I

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:J

.field private h:[B

.field private i:J

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:[B

.field private p:[B

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:[C

.field private x:Z

.field private y:Le3/n;

.field private z:Le3/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le3/h;->v:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Le3/h;->g:J

    .line 4
    iput-wide v0, p0, Le3/h;->j:J

    return-void
.end method


# virtual methods
.method public A()Le3/n;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->y:Le3/n;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le3/h;->x:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le3/h;->t:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le3/h;->u:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le3/h;->B:Z

    return v0
.end method

.method public F(Le3/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/h;->z:Le3/a;

    return-void
.end method

.method public G(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/h;->i:J

    return-void
.end method

.method public H(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/h;->e:I

    return-void
.end method

.method public I(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/h;->g:J

    return-void
.end method

.method public J([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/h;->h:[B

    return-void
.end method

.method public K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le3/h;->x:Z

    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le3/h;->t:Z

    return-void
.end method

.method public M(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/h;->n:I

    return-void
.end method

.method public N(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le3/h;->u:Z

    return-void
.end method

.method public O(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/h;->v:I

    return-void
.end method

.method public P([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/h;->p:[B

    return-void
.end method

.method public Q(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/h;->A:Ljava/util/ArrayList;

    return-void
.end method

.method public R(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/h;->l:I

    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/h;->s:Ljava/lang/String;

    return-void
.end method

.method public T(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/h;->m:I

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/h;->r:Ljava/lang/String;

    return-void
.end method

.method public V(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/h;->k:I

    return-void
.end method

.method public W(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le3/h;->B:Z

    return-void
.end method

.method public X([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/h;->d:[B

    return-void
.end method

.method public Y([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/h;->o:[B

    return-void
.end method

.method public Z(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/h;->f:I

    return-void
.end method

.method public a(Le3/o;Ljava/lang/String;Le3/k;Lf3/a;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Le3/h;->b(Le3/o;Ljava/lang/String;Le3/k;Ljava/lang/String;Lf3/a;Z)V

    return-void
.end method

.method public a0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/h;->q:J

    return-void
.end method

.method public b(Le3/o;Ljava/lang/String;Le3/k;Ljava/lang/String;Lf3/a;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lnet/lingala/zip4j/unzip/c;

    invoke-direct {v1, p1}, Lnet/lingala/zip4j/unzip/c;-><init>(Le3/o;)V

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 3
    invoke-virtual/range {v1 .. v7}, Lnet/lingala/zip4j/unzip/c;->f(Le3/h;Ljava/lang/String;Le3/k;Ljava/lang/String;Lf3/a;Z)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid output path"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input zipModel is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0([C)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/h;->w:[C

    return-void
.end method

.method public c(Le3/o;Ljava/lang/String;Lf3/a;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Le3/h;->a(Le3/o;Ljava/lang/String;Le3/k;Lf3/a;Z)V

    return-void
.end method

.method public c0(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/h;->a:I

    return-void
.end method

.method public d()Le3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->z:Le3/a;

    return-object v0
.end method

.method public d0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le3/h;->j:J

    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/h;->i:J

    return-wide v0
.end method

.method public e0(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/h;->b:I

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Le3/h;->e:I

    return v0
.end method

.method public f0(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/h;->c:I

    return-void
.end method

.method public g()J
    .locals 4

    .line 1
    iget-wide v0, p0, Le3/h;->g:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public g0(Le3/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/h;->y:Le3/n;

    return-void
.end method

.method public h()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->h:[B

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Le3/h;->n:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Le3/h;->v:I

    return v0
.end method

.method public k()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->p:[B

    return-object v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Le3/h;->l:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->s:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Le3/h;->m:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Le3/h;->k:I

    return v0
.end method

.method public r()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->d:[B

    return-object v0
.end method

.method public s()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->o:[B

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Le3/h;->f:I

    return v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/h;->q:J

    return-wide v0
.end method

.method public v()[C
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->w:[C

    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Le3/h;->a:I

    return v0
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/h;->j:J

    return-wide v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Le3/h;->b:I

    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Le3/h;->c:I

    return v0
.end method
