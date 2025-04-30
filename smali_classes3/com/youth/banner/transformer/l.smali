.class public Lcom/youth/banner/transformer/l;
.super Lcom/youth/banner/transformer/a;
.source "RotateUpTransformer.java"


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
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, -0x3e900000    # -15.0f

    mul-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
