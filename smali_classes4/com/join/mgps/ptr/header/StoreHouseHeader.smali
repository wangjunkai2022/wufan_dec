.class public Lcom/join/mgps/ptr/header/StoreHouseHeader;
.super Lcom/join/mgps/ptr/PtrUIHeader;
.source "StoreHouseHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ptr/header/StoreHouseHeader$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/ptr/header/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:F

.field private d:I

.field private e:F

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/view/animation/Transformation;

.field private s:Z

.field private t:Lcom/join/mgps/ptr/header/StoreHouseHeader$b;

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->c:F

    .line 5
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->d:I

    const v1, 0x3f333333    # 0.7f

    .line 6
    iput v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->e:F

    .line 7
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->f:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->g:F

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->h:I

    .line 10
    iput v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->i:I

    .line 11
    iput v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->j:I

    .line 12
    iput v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->k:I

    const v2, 0x3ecccccd    # 0.4f

    .line 13
    iput v2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->l:F

    .line 14
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->m:F

    .line 15
    iput v2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->n:F

    const/16 v0, 0x3e8

    .line 16
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->o:I

    .line 17
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->p:I

    const/16 v0, 0x190

    .line 18
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->q:I

    .line 19
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    .line 20
    iput-boolean v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->s:Z

    .line 21
    new-instance v0, Lcom/join/mgps/ptr/header/StoreHouseHeader$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/ptr/header/StoreHouseHeader$b;-><init>(Lcom/join/mgps/ptr/header/StoreHouseHeader;Lcom/join/mgps/ptr/header/StoreHouseHeader$a;)V

    iput-object v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->t:Lcom/join/mgps/ptr/header/StoreHouseHeader$b;

    .line 22
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->u:I

    .line 23
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->l()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->b:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 27
    iput p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->c:F

    .line 28
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->d:I

    const v0, 0x3f333333    # 0.7f

    .line 29
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->e:F

    .line 30
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->f:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->g:F

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->h:I

    .line 33
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->i:I

    .line 34
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->j:I

    .line 35
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->k:I

    const v1, 0x3ecccccd    # 0.4f

    .line 36
    iput v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->l:F

    .line 37
    iput p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->m:F

    .line 38
    iput v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->n:F

    const/16 p2, 0x3e8

    .line 39
    iput p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->o:I

    .line 40
    iput p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->p:I

    const/16 p2, 0x190

    .line 41
    iput p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->q:I

    .line 42
    new-instance p2, Landroid/view/animation/Transformation;

    invoke-direct {p2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    .line 43
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->s:Z

    .line 44
    new-instance p2, Lcom/join/mgps/ptr/header/StoreHouseHeader$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/join/mgps/ptr/header/StoreHouseHeader$b;-><init>(Lcom/join/mgps/ptr/header/StoreHouseHeader;Lcom/join/mgps/ptr/header/StoreHouseHeader$a;)V

    iput-object p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->t:Lcom/join/mgps/ptr/header/StoreHouseHeader$b;

    .line 45
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->u:I

    .line 46
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->l()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->b:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 50
    iput p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->c:F

    .line 51
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->d:I

    const p3, 0x3f333333    # 0.7f

    .line 52
    iput p3, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->e:F

    .line 53
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->f:I

    const/4 p3, 0x0

    .line 54
    iput p3, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->g:F

    const/4 p3, 0x0

    .line 55
    iput p3, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->h:I

    .line 56
    iput p3, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->i:I

    .line 57
    iput p3, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->j:I

    .line 58
    iput p3, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->k:I

    const v0, 0x3ecccccd    # 0.4f

    .line 59
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->l:F

    .line 60
    iput p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->m:F

    .line 61
    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->n:F

    const/16 p2, 0x3e8

    .line 62
    iput p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->o:I

    .line 63
    iput p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->p:I

    const/16 p2, 0x190

    .line 64
    iput p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->q:I

    .line 65
    new-instance p2, Landroid/view/animation/Transformation;

    invoke-direct {p2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    .line 66
    iput-boolean p3, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->s:Z

    .line 67
    new-instance p2, Lcom/join/mgps/ptr/header/StoreHouseHeader$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/join/mgps/ptr/header/StoreHouseHeader$b;-><init>(Lcom/join/mgps/ptr/header/StoreHouseHeader;Lcom/join/mgps/ptr/header/StoreHouseHeader$a;)V

    iput-object p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->t:Lcom/join/mgps/ptr/header/StoreHouseHeader$b;

    .line 68
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->u:I

    .line 69
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->l()V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/ptr/header/StoreHouseHeader;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->o:I

    return p0
.end method

.method static synthetic g(Lcom/join/mgps/ptr/header/StoreHouseHeader;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->p:I

    return p0
.end method

.method private getBottomOffset()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTopOffset()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/join/mgps/ptr/header/StoreHouseHeader;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->q:I

    return p0
.end method

.method static synthetic i(Lcom/join/mgps/ptr/header/StoreHouseHeader;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->m:F

    return p0
.end method

.method static synthetic j(Lcom/join/mgps/ptr/header/StoreHouseHeader;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->n:F

    return p0
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->s:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->t:Lcom/join/mgps/ptr/header/StoreHouseHeader$b;

    invoke-static {v0}, Lcom/join/mgps/ptr/header/StoreHouseHeader$b;->a(Lcom/join/mgps/ptr/header/StoreHouseHeader$b;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/ptr/util/b;->c(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v0}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->b:I

    const/high16 v0, 0x42200000    # 40.0f

    .line 3
    invoke-static {v0}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->d:I

    .line 4
    sget v0, Lcom/join/mgps/ptr/util/b;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->f:I

    return-void
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->s:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->t:Lcom/join/mgps/ptr/header/StoreHouseHeader$b;

    invoke-static {v0}, Lcom/join/mgps/ptr/header/StoreHouseHeader$b;->b(Lcom/join/mgps/ptr/header/StoreHouseHeader$b;)V

    return-void
.end method

.method private setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->g:F

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->q()V

    return-void
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Lcom/join/mgps/ptr/indicator/a;->c()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->setProgress(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->q()V

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/header/c;

    iget v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->f:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/c;->b(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->k()V

    return-void
.end method

.method public getLoadingAniDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->o:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->c:F

    return v0
.end method

.method public m(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[F>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 3
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_1

    .line 4
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 5
    new-instance v7, Landroid/graphics/PointF;

    aget v6, v5, v2

    invoke-static {v6}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v6

    int-to-float v6, v6

    iget v8, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->c:F

    mul-float v6, v6, v8

    aget v8, v5, v1

    invoke-static {v8}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->c:F

    mul-float v8, v8, v9

    invoke-direct {v7, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    new-instance v8, Landroid/graphics/PointF;

    const/4 v6, 0x2

    aget v6, v5, v6

    invoke-static {v6}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v6

    int-to-float v6, v6

    iget v9, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->c:F

    mul-float v6, v6, v9

    const/4 v9, 0x3

    aget v5, v5, v9

    invoke-static {v5}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v5

    int-to-float v5, v5

    iget v9, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->c:F

    mul-float v5, v5, v9

    invoke-direct {v8, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7
    iget v5, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 8
    iget v5, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 9
    iget v5, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 10
    iget v5, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 11
    new-instance v12, Lcom/join/mgps/ptr/header/c;

    iget v9, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->u:I

    iget v10, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->b:I

    move-object v5, v12

    move v6, v11

    invoke-direct/range {v5 .. v10}, Lcom/join/mgps/ptr/header/c;-><init>(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 12
    iget v5, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->f:I

    invoke-virtual {v12, v5}, Lcom/join/mgps/ptr/header/c;->b(I)V

    .line 13
    iget-object v5, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    float-to-double v1, v3

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->h:I

    float-to-double v1, v4

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->i:I

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x19

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->o(Ljava/lang/String;I)V

    return-void
.end method

.method public o(Ljava/lang/String;I)V
    .locals 1

    int-to-float p2, p2

    const v0, 0x3c23d70a    # 0.01f

    mul-float p2, p2, v0

    const/16 v0, 0xe

    .line 1
    invoke-static {p1, p2, v0}, Lcom/join/mgps/ptr/header/d;->c(Ljava/lang/String;FI)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->m(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->g:F

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget-object v4, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/ptr/header/c;

    .line 7
    iget v5, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->j:I

    int-to-float v5, v5

    iget-object v6, v4, Lcom/join/mgps/ptr/header/c;->a:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    .line 8
    iget v7, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->k:I

    int-to-float v7, v7

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v6

    .line 9
    iget-boolean v6, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->s:Z

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v8

    iget-object v6, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v8, v9, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 11
    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_0
    const/4 v6, 0x0

    cmpl-float v8, v0, v6

    if-nez v8, :cond_1

    .line 12
    iget v5, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->f:I

    invoke-virtual {v4, v5}, Lcom/join/mgps/ptr/header/c;->b(I)V

    goto :goto_4

    .line 13
    :cond_1
    iget v8, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->e:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, v8

    int-to-float v11, v3

    mul-float v10, v10, v11

    int-to-float v11, v2

    div-float/2addr v10, v11

    sub-float v11, v9, v8

    sub-float/2addr v11, v10

    cmpl-float v12, v0, v9

    if-eqz v12, :cond_4

    sub-float v11, v9, v11

    cmpl-float v11, v0, v11

    if-ltz v11, :cond_2

    goto :goto_2

    :cond_2
    cmpg-float v11, v0, v10

    if-gtz v11, :cond_3

    goto :goto_1

    :cond_3
    sub-float v6, v0, v10

    div-float/2addr v6, v8

    .line 14
    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 15
    :goto_1
    iget v8, v4, Lcom/join/mgps/ptr/header/c;->b:F

    sub-float/2addr v9, v6

    mul-float v8, v8, v9

    add-float/2addr v5, v8

    .line 16
    iget v8, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->d:I

    neg-int v8, v8

    int-to-float v8, v8

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    .line 17
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v9, 0x43b40000    # 360.0f

    mul-float v9, v9, v6

    .line 18
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 19
    invoke-virtual {v8, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 20
    invoke-virtual {v8, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 21
    iget v5, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->l:F

    mul-float v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/join/mgps/ptr/header/c;->c(F)V

    .line 22
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 23
    :cond_4
    :goto_2
    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    iget v5, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->l:F

    invoke-virtual {v4, v5}, Lcom/join/mgps/ptr/header/c;->c(F)V

    .line 25
    :goto_3
    invoke-virtual {v4, p1}, Lcom/join/mgps/ptr/header/c;->a(Landroid/graphics/Canvas;)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 27
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->s:Z

    if-eqz v0, :cond_6

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    :cond_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result p2

    iget v0, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->i:I

    add-int/2addr p2, v0

    invoke-direct {p0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->getBottomOffset()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->h:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->j:I

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->k:I

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->d:I

    return-void
.end method

.method public p(I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 4
    aget-object v3, p1, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [F

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    .line 5
    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->m(Ljava/util/ArrayList;)V

    return-void
.end method

.method public r(I)Lcom/join/mgps/ptr/header/StoreHouseHeader;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->d:I

    return-object p0
.end method

.method public s(I)Lcom/join/mgps/ptr/header/StoreHouseHeader;
    .locals 2

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->b:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/ptr/header/c;

    invoke-virtual {v1, p1}, Lcom/join/mgps/ptr/header/c;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setLoadingAniDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->o:I

    .line 2
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->p:I

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->c:F

    return-void
.end method

.method public t(I)Lcom/join/mgps/ptr/header/StoreHouseHeader;
    .locals 2

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->u:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/ptr/header/c;

    invoke-virtual {v1, p1}, Lcom/join/mgps/ptr/header/c;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
