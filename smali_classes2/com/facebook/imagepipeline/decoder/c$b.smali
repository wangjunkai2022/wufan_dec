.class public Lcom/facebook/imagepipeline/decoder/c$b;
.super Ljava/lang/Object;
.source "ImageDecoderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/c;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/decoder/c$b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/decoder/c$b;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/decoder/c$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/decoder/c$b;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/facebook/imageformat/c;Lcom/facebook/imageformat/c$a;Lcom/facebook/imagepipeline/decoder/b;)Lcom/facebook/imagepipeline/decoder/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/c$b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/decoder/c$b;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/c$b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, p1, p3}, Lcom/facebook/imagepipeline/decoder/c$b;->e(Lcom/facebook/imageformat/c;Lcom/facebook/imagepipeline/decoder/b;)Lcom/facebook/imagepipeline/decoder/c$b;

    return-object p0
.end method

.method public d()Lcom/facebook/imagepipeline/decoder/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/decoder/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/decoder/c;-><init>(Lcom/facebook/imagepipeline/decoder/c$b;Lcom/facebook/imagepipeline/decoder/c$a;)V

    return-object v0
.end method

.method public e(Lcom/facebook/imageformat/c;Lcom/facebook/imagepipeline/decoder/b;)Lcom/facebook/imagepipeline/decoder/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/c$b;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/decoder/c$b;->a:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/c$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
