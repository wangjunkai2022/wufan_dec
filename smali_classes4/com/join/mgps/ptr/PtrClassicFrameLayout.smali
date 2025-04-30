.class public Lcom/join/mgps/ptr/PtrClassicFrameLayout;
.super Lcom/join/mgps/ptr/PtrFrameLayout;
.source "PtrClassicFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;
    }
.end annotation


# instance fields
.field private s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

.field private t0:Lcom/join/mgps/ptr/PtrUIHeader;

.field private u0:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->DropBounce:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget-object p1, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->DropBounce:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    sget-object p1, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->DropBounce:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T()V

    return-void
.end method

.method private N()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->u0:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->u0:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->e(Lcom/join/mgps/ptr/c;)V

    return-void
.end method

.method private O()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/ptr/header/DropBounceHeaderView;

    invoke-direct {v1, v0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->setUp(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    const-string v2, "#4EA9E9"

    .line 4
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->setColor(I)V

    .line 5
    new-instance v2, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 6
    invoke-static {v0, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v0, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0x3e8

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setLoadingMinTime(I)V

    const/16 v0, 0x1f4

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setDurationToCloseHeader(I)V

    .line 9
    iput-object v1, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->t0:Lcom/join/mgps/ptr/PtrUIHeader;

    return-void
.end method

.method private P()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/MaterialHeader;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/header/MaterialHeader;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/MaterialHeader;->setColorSchemeColors([I)V

    .line 4
    new-instance v1, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 5
    invoke-static {v1}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    invoke-virtual {v0, p0}, Lcom/join/mgps/ptr/header/MaterialHeader;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 7
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->t0:Lcom/join/mgps/ptr/PtrUIHeader;

    return-void
.end method

.method private Q()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 3
    invoke-static {v1}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->setUp(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 5
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->t0:Lcom/join/mgps/ptr/PtrUIHeader;

    return-void
.end method

.method private R()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/StoreHouseHeader;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/header/StoreHouseHeader;-><init>(Landroid/content/Context;)V

    const-string v1, "PAPA LOADING..."

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    .line 3
    invoke-static {v2}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->n(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060318

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 6
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->t0:Lcom/join/mgps/ptr/PtrUIHeader;

    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->Classical:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->DropBounce:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->Material:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 5
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->RentalsSun:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 6
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->StoreHouse:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->DropBounce:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    :goto_0
    return-void
.end method

.method private T()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->S()V

    .line 2
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$a;->a:[I

    iget-object v1, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->s0:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->Q()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->P()V

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->O()V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->t0:Lcom/join/mgps/ptr/PtrUIHeader;

    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->t0:Lcom/join/mgps/ptr/PtrUIHeader;

    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->e(Lcom/join/mgps/ptr/c;)V

    return-void

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->N()V

    return-void
.end method


# virtual methods
.method public getClassicHeader()Lcom/join/mgps/ptr/PtrClassicDefaultHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->u0:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    return-object v0
.end method

.method public getHeader()Lcom/join/mgps/ptr/PtrUIHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->t0:Lcom/join/mgps/ptr/PtrUIHeader;

    return-object v0
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->u0:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->u0:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeRelateObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
