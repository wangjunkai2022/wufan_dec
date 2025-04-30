.class public Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;
.super Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
.source "PlatformPageAdapterPort.java"


# static fields
.field private static final DESIGN_LOGO_HEIGHT:I = 0x4c

.field private static final DESIGN_PADDING_TOP:I = 0x14

.field private static final DESIGN_SCREEN_WIDTH_P:I = 0x2d0

.field private static final DESIGN_SEP_LINE_WIDTH:I = 0x1

.field private static final LINE_SIZE_P:I = 0x4

.field private static final PAGE_SIZE_P:I = 0xc


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

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    int-to-float v1, p1

    const/high16 v2, 0x44340000    # 720.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 3
    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    .line 4
    :cond_0
    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    const/high16 v3, 0x42980000    # 76.0f

    mul-float v3, v3, v1

    float-to-int v3, v3

    .line 5
    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->logoHeight:I

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v3, v3, v1

    float-to-int v3, v3

    .line 6
    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->paddingTop:I

    const/high16 v3, 0x42500000    # 52.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 7
    iput v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->bottomHeight:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr p1, v2

    .line 8
    div-int/2addr p1, v0

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    .line 9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    if-gt p1, v0, :cond_1

    .line 10
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    rsub-int/lit8 p2, p2, 0xc

    if-gt p1, p2, :cond_2

    .line 12
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    goto :goto_0

    .line 13
    :cond_2
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    :goto_0
    return-void
.end method

.method protected collectCells(Ljava/util/ArrayList;)V
    .locals 9
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

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xc

    if-ge v1, v5, :cond_1

    .line 2
    iget v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    div-int v7, v1, v6

    .line 3
    rem-int v8, v1, v6

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    mul-int v7, v7, v6

    new-array v2, v2, [I

    aput v7, v2, v4

    aput v4, v2, v3

    .line 4
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    div-int/lit8 v6, v1, 0xc

    .line 6
    rem-int/lit8 v7, v1, 0xc

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    new-array v2, v2, [I

    aput v5, v2, v4

    aput v6, v2, v3

    .line 7
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    :goto_0
    if-ge v3, v1, :cond_3

    .line 8
    div-int/lit8 v0, v3, 0xc

    .line 9
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    mul-int/lit8 v0, v0, 0xc

    sub-int v0, v3, v0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
