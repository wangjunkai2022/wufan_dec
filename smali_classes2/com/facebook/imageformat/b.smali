.class public final Lcom/facebook/imageformat/b;
.super Ljava/lang/Object;
.source "DefaultImageFormats.java"


# static fields
.field public static final a:Lcom/facebook/imageformat/c;

.field public static final b:Lcom/facebook/imageformat/c;

.field public static final c:Lcom/facebook/imageformat/c;

.field public static final d:Lcom/facebook/imageformat/c;

.field public static final e:Lcom/facebook/imageformat/c;

.field public static final f:Lcom/facebook/imageformat/c;

.field public static final g:Lcom/facebook/imageformat/c;

.field public static final h:Lcom/facebook/imageformat/c;

.field public static final i:Lcom/facebook/imageformat/c;

.field public static final j:Lcom/facebook/imageformat/c;

.field public static final k:Lcom/facebook/imageformat/c;

.field private static l:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imageformat/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "JPEG"

    const-string v2, "jpeg"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 2
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "PNG"

    const-string v2, "png"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    .line 3
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "GIF"

    const-string v2, "gif"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->c:Lcom/facebook/imageformat/c;

    .line 4
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "BMP"

    const-string v2, "bmp"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->d:Lcom/facebook/imageformat/c;

    .line 5
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "ICO"

    const-string v2, "ico"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->e:Lcom/facebook/imageformat/c;

    .line 6
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "WEBP_SIMPLE"

    const-string/jumbo v2, "webp"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->f:Lcom/facebook/imageformat/c;

    .line 7
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "WEBP_LOSSLESS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->g:Lcom/facebook/imageformat/c;

    .line 8
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "WEBP_EXTENDED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->h:Lcom/facebook/imageformat/c;

    .line 9
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "WEBP_EXTENDED_WITH_ALPHA"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->i:Lcom/facebook/imageformat/c;

    .line 10
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "WEBP_ANIMATED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    .line 11
    new-instance v0, Lcom/facebook/imageformat/c;

    const-string v1, "HEIF"

    const-string v2, "heif"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/b;->l:Lcom/facebook/common/internal/ImmutableList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcom/facebook/imageformat/b;->c:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Lcom/facebook/imageformat/b;->d:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v1, Lcom/facebook/imageformat/b;->e:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v1, Lcom/facebook/imageformat/b;->f:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcom/facebook/imageformat/b;->g:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v1, Lcom/facebook/imageformat/b;->h:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v1, Lcom/facebook/imageformat/b;->i:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v1, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v1, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableList;->a(Ljava/util/List;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/facebook/imageformat/b;->l:Lcom/facebook/common/internal/ImmutableList;

    .line 15
    :cond_0
    sget-object v0, Lcom/facebook/imageformat/b;->l:Lcom/facebook/common/internal/ImmutableList;

    return-object v0
.end method

.method public static b(Lcom/facebook/imageformat/c;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imageformat/b;->f:Lcom/facebook/imageformat/c;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/b;->g:Lcom/facebook/imageformat/c;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/b;->h:Lcom/facebook/imageformat/c;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/b;->i:Lcom/facebook/imageformat/c;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static c(Lcom/facebook/imageformat/c;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/facebook/imageformat/b;->b(Lcom/facebook/imageformat/c;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
