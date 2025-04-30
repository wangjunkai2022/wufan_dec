.class public Lcom/join/mgps/adapter/p2;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/p2;->b:Ljava/util/Vector;

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/p2;->c:Ljava/util/Vector;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/adapter/p2;->d:I

    .line 5
    iput-object p1, p0, Lcom/join/mgps/adapter/p2;->a:Landroid/content/Context;

    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/adapter/p2;->e:Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/p2;->b:Ljava/util/Vector;

    const p2, 0x7f080af1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/p2;->b:Ljava/util/Vector;

    const v0, 0x7f0803f0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/p2;->b:Ljava/util/Vector;

    const v0, 0x7f0804bc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/p2;->b:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/join/mgps/adapter/p2;->b:Ljava/util/Vector;

    const p2, 0x7f080081

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x5

    if-ge p1, p2, :cond_0

    .line 12
    iget-object p2, p0, Lcom/join/mgps/adapter/p2;->c:Ljava/util/Vector;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(IZ)Landroid/graphics/drawable/LayerDrawable;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/p2;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0802b2

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/adapter/p2;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0802bc

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 4
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    .line 5
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object p1, v1, v0

    .line 6
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 7
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v3, 0x1

    const/4 v5, -0x5

    const/16 v6, 0x3c

    const/16 v7, 0x2d

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/p2;->e:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/p2;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/p2;->d:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/adapter/p2;->c:Ljava/util/Vector;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/p2;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 6
    iput p1, p0, Lcom/join/mgps/adapter/p2;->d:I

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p2;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/join/mgps/adapter/p2;->a:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    const/16 v0, 0x96

    invoke-direct {p3, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 4
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    .line 5
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/adapter/p2;->b:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lcom/join/mgps/adapter/p2;->c:Ljava/util/Vector;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/p2;->b(IZ)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
