.class public Lcom/facebook/imagepipeline/memory/b$b;
.super Ljava/lang/Object;
.source "BitmapCounterConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x180

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/memory/b$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/memory/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/memory/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/b;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/memory/b;-><init>(Lcom/facebook/imagepipeline/memory/b$b;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/b$b;->a:I

    return v0
.end method

.method public c(I)Lcom/facebook/imagepipeline/memory/b$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/memory/b$b;->a:I

    return-object p0
.end method
