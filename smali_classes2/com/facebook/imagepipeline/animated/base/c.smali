.class public Lcom/facebook/imagepipeline/animated/base/c;
.super Ljava/lang/Object;
.source "AnimatedDrawableOptionsBuilder.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->b:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/animated/base/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/b;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/b;-><init>(Lcom/facebook/imagepipeline/animated/base/c;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->d:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->a:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->c:I

    return v0
.end method

.method public f(Z)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/c;->b:Z

    return-object p0
.end method

.method public g(Z)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/c;->d:Z

    return-object p0
.end method

.method public h(Z)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/c;->a:Z

    return-object p0
.end method

.method public i(I)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/c;->c:I

    return-object p0
.end method
