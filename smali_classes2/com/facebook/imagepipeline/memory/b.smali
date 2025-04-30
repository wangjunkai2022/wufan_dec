.class public Lcom/facebook/imagepipeline/memory/b;
.super Ljava/lang/Object;
.source "BitmapCounterConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/b$b;
    }
.end annotation


# static fields
.field public static final b:I = 0x180


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/b$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x180

    .line 2
    iput v0, p0, Lcom/facebook/imagepipeline/memory/b;->a:I

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/b$b;->b()I

    move-result p1

    iput p1, p0, Lcom/facebook/imagepipeline/memory/b;->a:I

    return-void
.end method

.method public static b()Lcom/facebook/imagepipeline/memory/b$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/b$b;-><init>(Lcom/facebook/imagepipeline/memory/b$a;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/b;->a:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/memory/b;->a:I

    return-void
.end method
