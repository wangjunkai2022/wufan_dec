.class public Lcom/join/mgps/fragment/i;
.super Lcom/join/mgps/basefragment/a;
.source "ClassifyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c01f8
.end annotation


# instance fields
.field b:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/join/mgps/rpc/d;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/basefragment/a;-><init>()V

    return-void
.end method

.method static synthetic W(Lcom/join/mgps/fragment/i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    return-object p0
.end method

.method private X()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/join/mgps/fragment/i;->f:Ljava/util/List;

    .line 2
    new-instance v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;-><init>()V

    const/16 v1, 0x11

    new-array v2, v1, [I

    .line 3
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FEATURED_ONLINE:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->LARGE_SINGLE:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/4 v5, 0x1

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/4 v5, 0x2

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/4 v5, 0x3

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/4 v5, 0x4

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/4 v5, 0x5

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/4 v5, 0x7

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/16 v5, 0x8

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 13
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/16 v5, 0x9

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/16 v5, 0xa

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 15
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/16 v5, 0xb

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/16 v5, 0xc

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/16 v5, 0xd

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/16 v5, 0xe

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/16 v5, 0xf

    aput v3, v2, v5

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    const/16 v5, 0x10

    aput v3, v2, v5

    new-array v3, v1, [I

    .line 21
    fill-array-data v3, :array_0

    const-string v5, "\u7f51\u6e38"

    const-string v6, "\u5355\u673a"

    const-string v7, "\u8857\u673a"

    const-string v8, "FC\u5c0f\u9738\u738b"

    const-string v9, "GBA"

    const-string v10, "PSP"

    const-string v11, "PS"

    const-string v12, "NDS"

    const-string v13, "MD"

    const-string v14, "ONS"

    const-string v15, "SFC"

    const-string v16, "GBC"

    const-string v17, "N64"

    const-string v18, "WSC"

    const-string v19, "DC"

    const-string v20, "PS2"

    const-string v21, "H5"

    .line 22
    filled-new-array/range {v5 .. v21}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u6f6e\u6d41\u7f51\u7edc\u6e38\u620f"

    const-string v7, "\u4f18\u79c0\u5927\u578b\u5355\u673a\uff0c\u6c49\u5316\u7834\u89e3\u4e00\u7f51\u6253\u5c3d"

    const-string v8, "\u7ecf\u5178\u8857\u673a\u623f\u6e38\u620f\uff0c\u4ee3\u8868\u6e38\u620f\u6709\u62f3\u7687\u3001\u5408\u91d1\u5f39\u5934\u3001\u6050\u9f99\u5feb\u6253\u3001\u4e09\u56fd\u6218\u7eaa\u7b49"

    const-string v9, "\u4efb\u5929\u5802\u57281983\u5e74\u53d1\u552e\u7684\u6e38\u620f\u673a\uff0c\u4ee3\u8868\u6e38\u620f\u6709\u8d85\u7ea7\u739b\u4e3d\uff0c\u9b42\u6597\u7f57\u7b49"

    const-string v10, "\u4efb\u5929\u5802\u4e8e2001\u5e74\u53d1\u552e\u7684\u7b2c\u4e8c\u4ee3\u638c\u673a\uff0c\u4ee3\u8868\u6e38\u620f\u6709\u53e3\u888b\u5996\u602a\uff0c\u706b\u7130\u7eb9\u7ae0\u7b49"

    const-string v11, "\u7d22\u5c3c\u7ecf\u5178\u638c\u673a"

    const-string v12, "\u7d22\u5c3c\u7535\u89c6\u4e3b\u673a"

    const-string v13, "\u4efb\u5929\u5802DS\u6e38\u620f"

    const-string v14, "\u4e16\u5609MD\u4e3b\u673a"

    const-string v15, "GAL\u6a21\u62df\u5668"

    const-string v16, "\u4efb\u5929\u5802SNES\u4e3b\u673a"

    const-string v17, "\u4efb\u5929\u5802\u7b2c\u4e8c\u4ee3\u638c\u673a"

    const-string v18, "\u4efb\u5929\u5802\u7ecf\u5178\u4e3b\u673a"

    const-string v19, "\u7ecf\u5178\u638c\u673a\u795e\u5947\u5929\u9e45"

    const-string v20, "\u4efb\u5929\u5802\u7ecf\u5178\u4e3b\u673a"

    const-string v21, "\u4efb\u5929\u5802\u7ecf\u5178\u4e3b\u673a"

    const-string v22, "\u9875\u6e38"

    .line 23
    filled-new-array/range {v6 .. v22}, [Ljava/lang/String;

    move-result-object v6

    .line 24
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/join/mgps/fragment/i;->d:Ljava/util/HashMap;

    .line 25
    iget-object v7, v0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_1

    .line 26
    new-instance v9, Lcom/join/mgps/customview/CellClassifyItem;

    iget-object v10, v0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/join/mgps/customview/CellClassifyItem;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v8, :cond_0

    .line 28
    invoke-virtual {v10, v4, v7, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 29
    :cond_0
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    aget v10, v2, v8

    .line 31
    aget v11, v3, v8

    .line 32
    aget-object v12, v5, v8

    .line 33
    aget-object v13, v6, v8

    .line 34
    new-instance v14, Lcom/join/mgps/fragment/i$a;

    invoke-direct {v14, v0, v10, v12}, Lcom/join/mgps/fragment/i$a;-><init>(Lcom/join/mgps/fragment/i;ILjava/lang/String;)V

    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {v9, v10}, Lcom/join/mgps/customview/CellClassifyItem;->setmId(I)V

    .line 36
    invoke-virtual {v9, v12}, Lcom/join/mgps/customview/CellClassifyItem;->setmName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v9, v13}, Lcom/join/mgps/customview/CellClassifyItem;->setmDesc(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v9, v11}, Lcom/join/mgps/customview/CellClassifyItem;->setmIconRes(I)V

    .line 39
    iget-object v11, v0, Lcom/join/mgps/fragment/i;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    iget-object v11, v0, Lcom/join/mgps/fragment/i;->d:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f080979
        0x7f080bb5
        0x7f0803ef
        0x7f0803f1
        0x7f0804bd
        0x7f080a47
        0x7f080a43
        0x7f08088e
        0x7f0807c4
        0x7f080977
        0x7f080af2
        0x7f0804c1
        0x7f08088c
        0x7f080d3c
        0x7f080319
        0x7f080a42
        0x7f080a42
    .end array-data
.end method

.method private a0(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6
    new-instance v3, Lcom/join/mgps/customview/CellClassifyItem;

    iget-object v4, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/join/mgps/customview/CellClassifyItem;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v4, v1, v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 9
    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 11
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    move-result v5

    .line 12
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getIco_remote()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getName()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getDescribe()Ljava/lang/String;

    move-result-object v8

    .line 15
    new-instance v9, Lcom/join/mgps/fragment/i$b;

    invoke-direct {v9, p0, v5, v7}, Lcom/join/mgps/fragment/i$b;-><init>(Lcom/join/mgps/fragment/i;ILjava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {v3, v5}, Lcom/join/mgps/customview/CellClassifyItem;->setmId(I)V

    .line 17
    invoke-virtual {v3, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setmName(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, v8}, Lcom/join/mgps/customview/CellClassifyItem;->setmDesc(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v6}, Lcom/join/mgps/customview/CellClassifyItem;->setmIconSrc(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getGame_count()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/customview/CellClassifyItem;->setCountTip(I)V

    .line 21
    iget-object v4, p0, Lcom/join/mgps/fragment/i;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected N()I
    .locals 1

    const v0, 0x7f0c01f8

    return v0
.end method

.method protected O()I
    .locals 1

    const v0, 0x7f090537

    return v0
.end method

.method Z(Lcom/join/mgps/dto/ClassifyBean;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->b:Lcom/join/mgps/customview/FlowLayout;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_type()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_type()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->b:Lcom/join/mgps/customview/FlowLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_type()Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 7
    new-instance v5, Lcom/join/mgps/customview/CellClassifyItem;

    iget-object v6, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/join/mgps/customview/CellClassifyItem;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v6, v2, v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 10
    :cond_0
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/ClassifyGameTypeBean;

    .line 12
    new-instance v7, Lcom/join/mgps/fragment/i$c;

    invoke-direct {v7, p0, v6}, Lcom/join/mgps/fragment/i$c;-><init>(Lcom/join/mgps/fragment/i;Lcom/join/mgps/dto/ClassifyGameTypeBean;)V

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setmId(I)V

    .line 14
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setmName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getDescribe()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setmDesc(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getIco_remote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setmIconSrc(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getGame_count()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setCountTip(I)V

    .line 18
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getDescribe()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 19
    invoke-virtual {v5, v1}, Lcom/join/mgps/customview/CellClassifyItem;->setDescVisibility(I)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v5, v2}, Lcom/join/mgps/customview/CellClassifyItem;->setDescVisibility(I)V

    .line 21
    :goto_1
    iget-object v6, p0, Lcom/join/mgps/fragment/i;->b:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->b:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_tag_type()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_tag_type()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_tag_type()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i;->a0(Ljava/util/List;)V

    .line 25
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->Q()V

    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i;->e:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/fragment/i;->X()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i;->loadData()V

    return-void
.end method

.method protected loadData()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->e:Lcom/join/mgps/rpc/d;

    iget-object v1, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameSortRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->q0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ClassifyBean;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i;->Z(Lcom/join/mgps/dto/ClassifyBean;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/ClassifyGameActivity_;->e1(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->a(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->b(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
