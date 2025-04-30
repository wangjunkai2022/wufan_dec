.class public Lcom/join/mgps/adapter/d;
.super Landroid/widget/BaseAdapter;
.source "ChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/d$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/join/mgps/adapter/d;->a:Ljava/lang/String;

    const/4 p4, 0x0

    .line 3
    iput p4, p0, Lcom/join/mgps/adapter/d;->d:I

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/d;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/d;->c:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/join/mgps/adapter/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/d;->d:I

    return v0
.end method

.method public b(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/d;->d:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/d$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/d$a;-><init>(Lcom/join/mgps/adapter/d;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/d;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c00d1

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f09079a

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/d$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0907a0

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SquareLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/d$a;->c:Lcom/join/mgps/customview/SquareLayout;

    const v0, 0x7f09079b

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/join/mgps/adapter/d$a;->b:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/d$a;

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    :goto_0
    if-nez p1, :cond_1

    .line 8
    iget-object p2, p2, Lcom/join/mgps/adapter/d$a;->c:Lcom/join/mgps/customview/SquareLayout;

    iget-object v0, p0, Lcom/join/mgps/adapter/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HeadPortraitTable;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 9
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/d$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/HeadPortraitTable;->getHead_portrait_pic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f08069c

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/adapter/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/HeadPortraitTable;->getHead_portrait_pic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/d;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/adapter/d;->c:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-virtual {v4}, Lcom/join/mgps/db/tables/HeadPortraitTable;->getHead_portrait_pic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p2, Lcom/join/mgps/adapter/d$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 13
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    .line 14
    iget-object v0, p2, Lcom/join/mgps/adapter/d$a;->b:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p2, Lcom/join/mgps/adapter/d$a;->b:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_4
    :goto_1
    iget v0, p0, Lcom/join/mgps/adapter/d;->d:I

    if-lez v0, :cond_7

    if-ne v0, p1, :cond_5

    .line 17
    iget-object p1, p2, Lcom/join/mgps/adapter/d$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 18
    :cond_5
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_6

    .line 19
    iget-object p1, p2, Lcom/join/mgps/adapter/d$a;->b:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 20
    :cond_6
    iget-object p1, p2, Lcom/join/mgps/adapter/d$a;->b:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_2
    return-object p3
.end method
