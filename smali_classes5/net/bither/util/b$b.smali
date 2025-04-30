.class Lnet/bither/util/b$b;
.super Ljava/lang/Object;
.source "ImageCompressor.java"

# interfaces
.implements Lnet/bither/util/NativeUtil$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/bither/util/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lnet/bither/util/b;


# direct methods
.method constructor <init>(Lnet/bither/util/b;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/bither/util/b$b;->c:Lnet/bither/util/b;

    iput-object p2, p0, Lnet/bither/util/b$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lnet/bither/util/b$b;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "doCompress1-->onFailed==>finish compress.. fail"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lnet/bither/util/b$b;->c:Lnet/bither/util/b;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "doCompress1-->onSuccess==>finish compress.. success "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 1
    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lnet/bither/util/b$b;->a:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lnet/bither/util/b;->o(Ljava/io/File;)J

    move-result-wide v4

    .line 3
    sget-wide v6, Lnet/bither/util/b;->g:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCompress1-->finish compress.. success. size="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lnet/bither/util/b$b;->c:Lnet/bither/util/b;

    invoke-virtual {v0, p1, v2}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lnet/bither/util/b$b;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    const/16 v6, 0x14

    if-le v1, v6, :cond_1

    .line 7
    iget-object v1, p0, Lnet/bither/util/b$b;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v6, v1, -0xa

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    .line 8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doCompress1-->re-compress.. size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " newQuality="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " newInt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v7}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lnet/bither/util/b$b;->c:Lnet/bither/util/b;

    iget-object v1, p0, Lnet/bither/util/b$b;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lnet/bither/util/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCompress1-->finish compress.. fail. size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lnet/bither/util/b$b;->c:Lnet/bither/util/b;

    invoke-virtual {v1, p1, v0}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
