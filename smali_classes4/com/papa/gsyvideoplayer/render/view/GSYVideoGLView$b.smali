.class final Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;
.super Ljava/lang/Object;
.source "GSYVideoGLView.java"

# interfaces
.implements Ld2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->h(Landroid/content/Context;Landroid/view/ViewGroup;ILd2/c;Lcom/papa/gsyvideoplayer/utils/j$a;Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;[FLcom/papa/gsyvideoplayer/render/glrender/a;I)Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:I

.field final synthetic d:Ld2/c;

.field final synthetic e:Lcom/papa/gsyvideoplayer/utils/j$a;

.field final synthetic f:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILd2/c;Lcom/papa/gsyvideoplayer/utils/j$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->b:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->c:I

    iput-object p4, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->d:Ld2/c;

    iput-object p5, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->e:Lcom/papa/gsyvideoplayer/utils/j$a;

    iput p6, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/papa/gsyvideoplayer/render/glrender/a;Ljava/lang/String;IZ)V
    .locals 9

    if-eqz p4, :cond_0

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->b:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->c:I

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->d:Ld2/c;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->e:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 2
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->h()Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    move-result-object v5

    .line 3
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->i()[F

    move-result-object v6

    iget v8, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;->f:I

    move-object v7, p1

    .line 4
    invoke-static/range {v0 .. v8}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->h(Landroid/content/Context;Landroid/view/ViewGroup;ILd2/c;Lcom/papa/gsyvideoplayer/utils/j$a;Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;[FLcom/papa/gsyvideoplayer/render/glrender/a;I)Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;

    :cond_0
    return-void
.end method
