.class Lcom/papa/gsyvideoplayer/utils/e$e;
.super Ljava/lang/Object;
.source "GSYVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/e;->F(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/e;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e$e;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$e;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->q(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->r()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$e;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$e;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$e;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->q(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->E()V

    :cond_1
    return-void
.end method
