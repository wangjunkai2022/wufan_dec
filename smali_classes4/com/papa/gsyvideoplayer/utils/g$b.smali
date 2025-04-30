.class Lcom/papa/gsyvideoplayer/utils/g$b;
.super Ljava/lang/Object;
.source "GifCreateHelper.java"

# interfaces
.implements Lc2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/g;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/g;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/g$b;->a:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$b;->a:Lcom/papa/gsyvideoplayer/utils/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/g;->g(Lcom/papa/gsyvideoplayer/utils/g;Z)Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " SUCCESS CREATE FILE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/g$b;->a:Lcom/papa/gsyvideoplayer/utils/g;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/g;->a(Lcom/papa/gsyvideoplayer/utils/g;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
