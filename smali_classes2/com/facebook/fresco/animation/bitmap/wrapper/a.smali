.class public Lcom/facebook/fresco/animation/bitmap/wrapper/a;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendAnimationInformation.java"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/d;


# instance fields
.field private final c:Lcom/facebook/imagepipeline/animated/base/a;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/a;->c:Lcom/facebook/imagepipeline/animated/base/a;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/a;->c:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->b()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/a;->c:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->d()I

    move-result v0

    return v0
.end method

.method public j(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/a;->c:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->n(I)I

    move-result p1

    return p1
.end method
