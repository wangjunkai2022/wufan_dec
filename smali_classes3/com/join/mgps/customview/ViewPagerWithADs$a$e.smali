.class public Lcom/join/mgps/customview/ViewPagerWithADs$a$e;
.super Ljava/lang/Object;
.source "ViewPagerWithADs.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ViewPagerWithADs$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# static fields
.field private static final c:F = 0.85f

.field public static final d:F = 0.5f


# instance fields
.field private a:F

.field final synthetic b:Lcom/join/mgps/customview/ViewPagerWithADs$a;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x3f59999a    # 0.85f

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;->a:F

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 4
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 5
    iget p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;->a:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 6
    iget p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;->a:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    int-to-float p2, v0

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v2

    if-gtz v3, :cond_2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    add-float v1, p2, v2

    .line 8
    iget v4, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;->a:F

    sub-float/2addr v2, v4

    mul-float v1, v1, v2

    add-float/2addr v1, v4

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    int-to-float v0, v0

    neg-float p2, p2

    mul-float p2, p2, v3

    add-float/2addr p2, v3

    mul-float v0, v0, p2

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_1
    sub-float p2, v2, p2

    .line 12
    iget v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;->a:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p2

    add-float/2addr v2, v1

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    int-to-float v0, v0

    mul-float p2, p2, v3

    mul-float v0, v0, p2

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 17
    iget p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;->a:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 18
    iget p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;->a:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;->a(Landroid/view/View;F)V

    return-void
.end method
