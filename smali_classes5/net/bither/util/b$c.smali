.class Lnet/bither/util/b$c;
.super Ljava/lang/Object;
.source "ImageCompressor.java"

# interfaces
.implements Lnet/bither/util/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/bither/util/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lnet/bither/util/b;


# direct methods
.method constructor <init>(Lnet/bither/util/b;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    iput-object p2, p0, Lnet/bither/util/b$c;->a:Ljava/lang/String;

    iput p3, p0, Lnet/bither/util/b$c;->b:I

    iput-object p4, p0, Lnet/bither/util/b$c;->c:Landroid/content/Context;

    iput-object p5, p0, Lnet/bither/util/b$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "OptimResultHandler-->optimSuccess"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    iget-object v0, v0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    iget-object v1, v0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lnet/bither/util/b;->a(Lnet/bither/util/b;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 7

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
    aget-object p2, p1, v2

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 5
    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x5

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sget-wide v3, Lnet/bither/util/b;->g:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 6
    invoke-direct {p0, p2}, Lnet/bither/util/b$c;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget v0, p0, Lnet/bither/util/b$c;->b:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 8
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    .line 9
    sget-wide v5, Lnet/bither/util/b;->g:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    cmpg-double p1, v3, v5

    if-gez p1, :cond_1

    .line 10
    iget p1, p0, Lnet/bither/util/b$c;->b:I

    sub-int/2addr p1, v2

    goto :goto_0

    .line 11
    :cond_1
    iget p1, p0, Lnet/bither/util/b$c;->b:I

    sub-int/2addr p1, v1

    .line 12
    :goto_0
    iget-object v0, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    iget-object v1, p0, Lnet/bither/util/b$c;->c:Landroid/content/Context;

    iget-object v2, p0, Lnet/bither/util/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, p1}, Lnet/bither/util/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-direct {p0, p2}, Lnet/bither/util/b$c;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lnet/bither/util/b$c;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/bither/util/b$c;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "OptimResultHandler-->optimFailure"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    return-void
.end method
