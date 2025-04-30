.class Lnet/bither/util/b$d;
.super Ljava/lang/Object;
.source "ImageCompressor.java"

# interfaces
.implements Lnet/bither/util/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/bither/util/b;->B(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/HashMap;

.field final synthetic f:Lnet/bither/util/b$f;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/bither/util/b$d;->a:Ljava/lang/String;

    iput p2, p0, Lnet/bither/util/b$d;->b:I

    iput-object p3, p0, Lnet/bither/util/b$d;->c:Landroid/content/Context;

    iput-object p4, p0, Lnet/bither/util/b$d;->d:Ljava/util/List;

    iput-object p5, p0, Lnet/bither/util/b$d;->e:Ljava/util/HashMap;

    iput-object p6, p0, Lnet/bither/util/b$d;->f:Lnet/bither/util/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "OptimResultHandler-->optimSuccess"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lnet/bither/util/b$d;->e:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lnet/bither/util/b$d;->e:Ljava/util/HashMap;

    invoke-static {p1}, Lnet/bither/util/b;->c(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/bither/util/b$d;->f:Lnet/bither/util/b$f;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lnet/bither/util/b$d;->d:Ljava/util/List;

    iget-object v0, p0, Lnet/bither/util/b$d;->e:Ljava/util/HashMap;

    invoke-static {p2, v0, p1}, Lnet/bither/util/b;->d(Ljava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OptimResultHandler-->msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string p1, ","

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    aget-object v4, p1, v2

    .line 4
    array-length p2, p1

    const/16 v0, 0x8

    const/4 v1, 0x5

    if-ne p2, v0, :cond_0

    aget-object p2, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-long v2, p2

    sget-wide v5, Lnet/bither/util/b;->g:J

    cmp-long p2, v2, v5

    if-gez p2, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lnet/bither/util/b$d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, v4, p1}, Lnet/bither/util/b$d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget p2, p0, Lnet/bither/util/b$d;->b:I

    const/16 v0, 0xa

    if-le p2, v0, :cond_2

    .line 8
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    .line 9
    sget-wide v2, Lnet/bither/util/b;->g:J

    sub-long/2addr p1, v2

    long-to-double p1, p1

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    cmpg-double v5, p1, v2

    if-gez v5, :cond_1

    .line 10
    iget p1, p0, Lnet/bither/util/b$d;->b:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 11
    :cond_1
    iget p1, p0, Lnet/bither/util/b$d;->b:I

    sub-int/2addr p1, v0

    :goto_0
    move v6, p1

    .line 12
    iget-object v3, p0, Lnet/bither/util/b$d;->c:Landroid/content/Context;

    iget-object v5, p0, Lnet/bither/util/b$d;->a:Ljava/lang/String;

    iget-object v7, p0, Lnet/bither/util/b$d;->d:Ljava/util/List;

    iget-object v8, p0, Lnet/bither/util/b$d;->e:Ljava/util/HashMap;

    iget-object v9, p0, Lnet/bither/util/b$d;->f:Lnet/bither/util/b$f;

    invoke-static/range {v3 .. v9}, Lnet/bither/util/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lnet/bither/util/b$d;->b()V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Lnet/bither/util/b$d;->b()V

    :goto_1
    return-void
.end method

.method b()V
    .locals 1

    const-string v0, "OptimResultHandler-->optimFailure"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void
.end method
