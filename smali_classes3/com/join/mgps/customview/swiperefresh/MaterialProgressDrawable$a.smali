.class Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

.field final synthetic b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    iget-boolean v0, p2, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->a(FLcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->c(Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)F

    move-result p2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->l()F

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->n()F

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->m()F

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    iget-object v4, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v3, p1, v4}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->n(FLcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_1

    div-float v5, p1, v4

    sub-float v6, v3, p2

    .line 8
    sget-object v7, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->m:Landroid/view/animation/Interpolator;

    .line 9
    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v6, v6, v5

    add-float/2addr v1, v6

    .line 10
    iget-object v5, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v5, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->F(F)V

    :cond_1
    cmpl-float v1, p1, v4

    if-lez v1, :cond_2

    sub-float/2addr v3, p2

    sub-float p2, p1, v4

    div-float/2addr p2, v4

    .line 11
    sget-object v1, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->m:Landroid/view/animation/Interpolator;

    .line 12
    invoke-interface {v1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float v3, v3, p2

    add-float/2addr v0, v3

    .line 13
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->B(F)V

    :cond_2
    const/high16 p2, 0x3e800000    # 0.25f

    mul-float p2, p2, p1

    add-float/2addr v2, p2

    .line 14
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->a:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {p2, v2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->D(F)V

    const/high16 p2, 0x43580000    # 216.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x44870000    # 1080.0f

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    iget v1, v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->g:F

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->i(F)V

    :goto_0
    return-void
.end method
