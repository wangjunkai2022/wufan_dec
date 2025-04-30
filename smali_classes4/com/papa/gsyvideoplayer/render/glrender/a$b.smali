.class Lcom/papa/gsyvideoplayer/render/glrender/a$b;
.super Ljava/lang/Object;
.source "GSYVideoGLViewBaseRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/papa/gsyvideoplayer/render/glrender/a;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/render/glrender/a;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$b;->c:Lcom/papa/gsyvideoplayer/render/glrender/a;

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$b;->c:Lcom/papa/gsyvideoplayer/render/glrender/a;

    iget-object v1, v0, Lcom/papa/gsyvideoplayer/render/glrender/a;->l:Ld2/b;

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$b;->b:I

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$b;->c:Lcom/papa/gsyvideoplayer/render/glrender/a;

    iget-boolean v4, v4, Lcom/papa/gsyvideoplayer/render/glrender/a;->k:Z

    invoke-interface {v1, v0, v2, v3, v4}, Ld2/b;->a(Lcom/papa/gsyvideoplayer/render/glrender/a;Ljava/lang/String;IZ)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a$b;->c:Lcom/papa/gsyvideoplayer/render/glrender/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/papa/gsyvideoplayer/render/glrender/a;->k:Z

    return-void
.end method
