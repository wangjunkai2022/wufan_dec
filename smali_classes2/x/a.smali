.class public Lx/a;
.super Ljava/lang/Object;
.source "ItemViewInfo.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(IFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lx/a;->d:I

    .line 3
    iput p2, p0, Lx/a;->a:F

    .line 4
    iput p3, p0, Lx/a;->c:F

    .line 5
    iput p4, p0, Lx/a;->b:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lx/a;->b:F

    return v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lx/a;->c:F

    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lx/a;->a:F

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lx/a;->d:I

    return v0
.end method

.method public e()Lx/a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lx/a;->e:Z

    return-object p0
.end method

.method public f(F)V
    .locals 0

    .line 1
    iput p1, p0, Lx/a;->b:F

    return-void
.end method

.method public g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lx/a;->c:F

    return-void
.end method

.method public h(F)V
    .locals 0

    .line 1
    iput p1, p0, Lx/a;->a:F

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx/a;->d:I

    return-void
.end method
