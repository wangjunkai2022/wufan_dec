.class Lcom/join/mgps/ptr/header/a$b;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ptr/header/a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ptr/header/a$h;

.field final synthetic b:Lcom/join/mgps/ptr/header/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a$b;->b:Lcom/join/mgps/ptr/header/a;

    iput-object p2, p0, Lcom/join/mgps/ptr/header/a$b;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$b;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {p2}, Lcom/join/mgps/ptr/header/a$h;->j()F

    move-result p2

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p2, v0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a$b;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->k()F

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/ptr/header/a$b;->a:Lcom/join/mgps/ptr/header/a$h;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/ptr/header/a$h;->i()F

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/ptr/header/a$b;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v2}, Lcom/join/mgps/ptr/header/a$h;->k()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/ptr/header/a$b;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v1, v0}, Lcom/join/mgps/ptr/header/a$h;->B(F)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a$b;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->j()F

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/ptr/header/a$b;->a:Lcom/join/mgps/ptr/header/a$h;

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/ptr/header/a$h;->j()F

    move-result v1

    sub-float/2addr p2, v1

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    .line 7
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$b;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {p2, v0}, Lcom/join/mgps/ptr/header/a$h;->z(F)V

    .line 8
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$b;->a:Lcom/join/mgps/ptr/header/a$h;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/join/mgps/ptr/header/a$h;->r(F)V

    return-void
.end method
