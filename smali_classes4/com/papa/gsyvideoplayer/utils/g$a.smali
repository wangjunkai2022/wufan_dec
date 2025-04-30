.class Lcom/papa/gsyvideoplayer/utils/g$a;
.super Ljava/lang/Object;
.source "GifCreateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/g;->m(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/papa/gsyvideoplayer/utils/g;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/g;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->b:Lcom/papa/gsyvideoplayer/utils/g;

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->b:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->a(Lcom/papa/gsyvideoplayer/utils/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->b:Lcom/papa/gsyvideoplayer/utils/g;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->a:Ljava/io/File;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/g;->a(Lcom/papa/gsyvideoplayer/utils/g;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->b:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->b(Lcom/papa/gsyvideoplayer/utils/g;)I

    move-result v5

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->b:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->c(Lcom/papa/gsyvideoplayer/utils/g;)I

    move-result v6

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->b:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->d(Lcom/papa/gsyvideoplayer/utils/g;)I

    move-result v7

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->b:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->e(Lcom/papa/gsyvideoplayer/utils/g;)Lc2/c;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/papa/gsyvideoplayer/utils/g;->j(Ljava/io/File;Ljava/util/List;IIILc2/c;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->b:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->e(Lcom/papa/gsyvideoplayer/utils/g;)Lc2/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc2/c;->a(ZLjava/io/File;)V

    :goto_0
    return-void
.end method
