.class Lcom/papa/gsyvideoplayer/utils/i$f;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/i;->U(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/i;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i$f;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$f;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->r(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->r()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$f;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->r(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->E()V

    :cond_0
    return-void
.end method
