.class public Lcom/youth/banner/transformer/k;
.super Lcom/youth/banner/transformer/a;
.source "RotateDownTransformer.java"


# static fields
.field private static final a:F = -15.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f(Landroid/view/View;F)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x3e900000    # -15.0f

    mul-float p2, p2, v2

    const/high16 v2, -0x40600000    # -1.25f

    mul-float p2, p2, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
