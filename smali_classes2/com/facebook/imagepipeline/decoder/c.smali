.class public Lcom/facebook/imagepipeline/decoder/c;
.super Ljava/lang/Object;
.source "ImageDecoderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/decoder/c$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/c;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/decoder/c$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/facebook/imagepipeline/decoder/c$b;->a(Lcom/facebook/imagepipeline/decoder/c$b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/decoder/c;->a:Ljava/util/Map;

    .line 4
    invoke-static {p1}, Lcom/facebook/imagepipeline/decoder/c$b;->b(Lcom/facebook/imagepipeline/decoder/c$b;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/c;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/decoder/c$b;Lcom/facebook/imagepipeline/decoder/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/decoder/c;-><init>(Lcom/facebook/imagepipeline/decoder/c$b;)V

    return-void
.end method

.method public static c()Lcom/facebook/imagepipeline/decoder/c$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/decoder/c$b;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/decoder/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/c;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/c;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/c;->b:Ljava/util/List;

    return-object v0
.end method
