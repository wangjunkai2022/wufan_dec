.class public Lcom/papa/gsyvideoplayer/render/a;
.super Ljava/lang/Object;
.source "GSYRenderView.java"


# instance fields
.field protected a:Lcom/papa/gsyvideoplayer/render/view/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/render/a;->g()I

    move-result v0

    .line 2
    instance-of v1, p0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, p0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 8
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static g()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/f;->g()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, -0x2

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Landroid/view/ViewGroup;ILd2/c;Lcom/papa/gsyvideoplayer/utils/j$a;Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;[FLcom/papa/gsyvideoplayer/render/glrender/a;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/f;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/papa/gsyvideoplayer/render/view/GSYSurfaceView;->h(Landroid/content/Context;Landroid/view/ViewGroup;ILd2/c;Lcom/papa/gsyvideoplayer/utils/j$a;)Lcom/papa/gsyvideoplayer/render/view/GSYSurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/f;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static/range {p1 .. p9}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->h(Landroid/content/Context;Landroid/view/ViewGroup;ILd2/c;Lcom/papa/gsyvideoplayer/utils/j$a;Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;[FLcom/papa/gsyvideoplayer/render/glrender/a;I)Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/papa/gsyvideoplayer/render/view/GSYTextureView;->h(Landroid/content/Context;Landroid/view/ViewGroup;ILd2/c;Lcom/papa/gsyvideoplayer/utils/j$a;)Lcom/papa/gsyvideoplayer/render/view/GSYTextureView;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    return v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->g()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->c()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->e()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public p(Ljava/io/File;Lc2/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/papa/gsyvideoplayer/render/a;->q(Ljava/io/File;ZLc2/f;)V

    return-void
.end method

.method public q(Ljava/io/File;ZLc2/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/render/view/a;->a(Ljava/io/File;ZLc2/f;)V

    :cond_0
    return-void
.end method

.method public r(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/render/view/a;->setGLEffectFilter(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/render/view/a;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public t(Lcom/papa/gsyvideoplayer/render/glrender/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/render/view/a;->setGLRenderer(Lcom/papa/gsyvideoplayer/render/glrender/a;)V

    :cond_0
    return-void
.end method

.method public u(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public v([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/render/view/a;->setGLMVPMatrix([F)V

    :cond_0
    return-void
.end method

.method public w(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public x(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/render/view/a;->setRenderTransform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public y(Lc2/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa/gsyvideoplayer/render/a;->z(Lc2/e;Z)V

    return-void
.end method

.method public z(Lc2/e;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/a;->a:Lcom/papa/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/render/view/a;->f(Lc2/e;Z)V

    :cond_0
    return-void
.end method
