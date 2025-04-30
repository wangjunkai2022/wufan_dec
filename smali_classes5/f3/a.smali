.class public Lf3/a;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# static fields
.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = -0x1

.field public static final r:I = 0x0

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x3

.field public static final v:I = 0x4


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/Throwable;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lf3/a;->o()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf3/a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf3/a;->i:Z

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf3/a;->o()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lf3/a;->g:I

    .line 3
    iput-object p1, p0, Lf3/a;->h:Ljava/lang/Throwable;

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf3/a;->o()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf3/a;->g:I

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf3/a;->o()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf3/a;->h:Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf3/a;->g:I

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lf3/a;->e:I

    return v0
.end method

.method public f()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/a;->h:Ljava/lang/Throwable;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lf3/a;->d:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lf3/a;->g:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lf3/a;->a:I

    return v0
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf3/a;->b:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf3/a;->c:J

    return-wide v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf3/a;->i:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf3/a;->j:Z

    return v0
.end method

.method public o()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lf3/a;->e:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf3/a;->a:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lf3/a;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lf3/a;->b:J

    .line 5
    iput-wide v1, p0, Lf3/a;->c:J

    .line 6
    iput v0, p0, Lf3/a;->d:I

    return-void
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf3/a;->e:I

    return-void
.end method

.method public q(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf3/a;->h:Ljava/lang/Throwable;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf3/a;->f:Ljava/lang/String;

    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf3/a;->j:Z

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf3/a;->g:I

    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf3/a;->d:I

    return-void
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf3/a;->a:I

    return-void
.end method

.method public v(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lf3/a;->b:J

    return-void
.end method

.method public w(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lf3/a;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lf3/a;->c:J

    .line 2
    iget-wide p1, p0, Lf3/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    .line 3
    div-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lf3/a;->d:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    .line 4
    iput p2, p0, Lf3/a;->d:I

    .line 5
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lf3/a;->j:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-wide/16 p1, 0x96

    .line 6
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0
.end method
