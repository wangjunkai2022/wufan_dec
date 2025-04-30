.class public Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;
.super Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
.source "PlatformPageAdapterLand.java"


# static fields
.field private static final DESIGN_CELL_WIDTH_L:I = 0xa0

.field private static final DESIGN_LOGO_HEIGHT:I = 0x4c

.field private static final DESIGN_PADDING_TOP:I = 0x14

.field private static final DESIGN_SCREEN_WIDTH_L:I = 0x500

.field private static final DESIGN_SEP_LINE_WIDTH:I = 0x1


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected calculateSize(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p2, p1

    const/high16 v0, 0x44a00000    # 1280.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x43200000    # 160.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 2
    div-int v0, p1, v0

    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    .line 3
    iput v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    iput v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    const/high16 v3, 0x42980000    # 76.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 5
    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->logoHeight:I

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 6
    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->paddingTop:I

    const/high16 v3, 0x42500000    # 52.0f

    mul-float p2, p2, v3

    float-to-int p2, p2

    .line 7
    iput p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->bottomHeight:I

    mul-int/lit8 p2, v1, 0x3

    sub-int/2addr p1, p2

    sub-int/2addr v0, v2

    .line 8
    div-int/2addr p1, v0

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    add-int/2addr p1, v1

    .line 9
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    return-void
.end method

.method protected collectCells(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v2, :cond_1

    .line 3
    div-int v6, v1, v2

    .line 4
    rem-int v7, v1, v2

    if-eqz v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    mul-int v6, v6, v2

    new-array v2, v3, [I

    aput v6, v2, v5

    aput v5, v2, v4

    .line 5
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    div-int v6, v1, v2

    .line 7
    rem-int v7, v1, v2

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    new-array v3, v3, [I

    aput v2, v3, v5

    aput v6, v3, v4

    .line 8
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    :goto_0
    if-ge v4, v1, :cond_3

    .line 9
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    div-int v2, v4, v0

    .line 10
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    aget-object v3, v3, v2

    mul-int v0, v0, v2

    sub-int v0, v4, v0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
