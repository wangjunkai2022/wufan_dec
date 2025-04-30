.class public Le3/p;
.super Ljava/lang/Object;
.source "ZipParameters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z

.field private f:[C

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/util/TimeZone;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, Le3/p;->a:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le3/p;->c:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le3/p;->e:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Le3/p;->d:I

    .line 6
    iput v1, p0, Le3/p;->g:I

    .line 7
    iput-boolean v0, p0, Le3/p;->h:Z

    .line 8
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Le3/p;->j:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le3/p;->n:Z

    return-void
.end method

.method public B(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/p;->k:I

    return-void
.end method

.method public C(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/p;->j:Ljava/util/TimeZone;

    return-void
.end method

.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le3/p;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le3/p;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le3/p;->a:I

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/p;->l:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Le3/p;->d:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/p;->m:Ljava/lang/String;

    return-object v0
.end method

.method public g()[C
    .locals 1

    .line 1
    iget-object v0, p0, Le3/p;->f:[C

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/p;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Le3/p;->k:I

    return v0
.end method

.method public j()Ljava/util/TimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/p;->j:Ljava/util/TimeZone;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le3/p;->c:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le3/p;->h:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le3/p;->e:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le3/p;->n:Z

    return v0
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/p;->g:I

    return-void
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/p;->b:I

    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/p;->a:I

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/p;->l:Ljava/lang/String;

    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le3/p;->c:Z

    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/p;->d:I

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/p;->m:Ljava/lang/String;

    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le3/p;->h:Z

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Le3/p;->x([C)V

    return-void
.end method

.method public x([C)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/p;->f:[C

    return-void
.end method

.method public y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le3/p;->e:Z

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\\"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/"

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object p1, Lnet/lingala/zip4j/util/e;->E0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "\\\\"

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    iput-object p1, p0, Le3/p;->i:Ljava/lang/String;

    return-void
.end method
