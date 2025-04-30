.class Lcom/join/mgps/ptr/header/MaterialHeader$a;
.super Landroid/view/animation/Animation;
.source "MaterialHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ptr/header/MaterialHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/MaterialHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader$a;->a:Lcom/join/mgps/ptr/header/MaterialHeader;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/ptr/header/MaterialHeader$a;->a:Lcom/join/mgps/ptr/header/MaterialHeader;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/join/mgps/ptr/header/MaterialHeader;->g(Lcom/join/mgps/ptr/header/MaterialHeader;F)F

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader$a;->a:Lcom/join/mgps/ptr/header/MaterialHeader;

    invoke-static {p1}, Lcom/join/mgps/ptr/header/MaterialHeader;->h(Lcom/join/mgps/ptr/header/MaterialHeader;)Lcom/join/mgps/ptr/header/a;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/ptr/header/MaterialHeader$a;->a:Lcom/join/mgps/ptr/header/MaterialHeader;

    invoke-static {p2}, Lcom/join/mgps/ptr/header/MaterialHeader;->f(Lcom/join/mgps/ptr/header/MaterialHeader;)F

    move-result p2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/ptr/header/a;->setAlpha(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader$a;->a:Lcom/join/mgps/ptr/header/MaterialHeader;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
