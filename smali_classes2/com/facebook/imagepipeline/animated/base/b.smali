.class public Lcom/facebook/imagepipeline/animated/base/b;
.super Ljava/lang/Object;
.source "AnimatedDrawableOptions.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static e:Lcom/facebook/imagepipeline/animated/base/b;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/animated/base/b;->a()Lcom/facebook/imagepipeline/animated/base/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/c;->a()Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/animated/base/b;->e:Lcom/facebook/imagepipeline/animated/base/b;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/c;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->a:Z

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/c;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->b:Z

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/c;->e()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:I

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/c;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/b;->d:Z

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/animated/base/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/c;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/base/c;-><init>()V

    return-object v0
.end method
