.class public Lcom/join/mgps/adapter/w0;
.super Landroid/widget/BaseAdapter;
.source "GameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/w0$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/adapter/w0;->f:Z

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/w0;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/w0;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/adapter/w0;->f:Z

    .line 9
    iput-object p1, p0, Lcom/join/mgps/adapter/w0;->a:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/w0;->b:Landroid/view/LayoutInflater;

    .line 11
    iput-object p3, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    .line 12
    iput p2, p0, Lcom/join/mgps/adapter/w0;->e:I

    .line 13
    iput-boolean p4, p0, Lcom/join/mgps/adapter/w0;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/adapter/w0;->f:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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
    .locals 7

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/w0;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0c023a

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/w0$b;

    invoke-direct {p3, p0, v0}, Lcom/join/mgps/adapter/w0$b;-><init>(Lcom/join/mgps/adapter/w0;Lcom/join/mgps/adapter/w0$a;)V

    const v0, 0x7f0906f6

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/w0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906f2

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/w0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906f5

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/w0$b;->c:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/w0$b;

    .line 8
    :goto_0
    iget v0, p0, Lcom/join/mgps/adapter/w0;->e:I

    const/4 v1, 0x1

    const v2, 0x7f0711cc

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, ".gif"

    if-ne v0, v1, :cond_4

    .line 9
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-boolean v0, p0, Lcom/join/mgps/adapter/w0;->f:Z

    const v1, 0x7f07117d

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    iget-object v6, p0, Lcom/join/mgps/adapter/w0;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 13
    iget-object v2, p0, Lcom/join/mgps/adapter/w0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f071110

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    iget-object v2, p3, Lcom/join/mgps/adapter/w0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/adapter/w0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/adapter/w0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 21
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 22
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/adapter/w0;->f:Z

    const v1, 0x7f071065

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 24
    iget-object v6, p0, Lcom/join/mgps/adapter/w0;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 25
    iget-object v2, p0, Lcom/join/mgps/adapter/w0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0712fa

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 26
    iget-object v2, p3, Lcom/join/mgps/adapter/w0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/adapter/w0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_2

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_7
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/join/mgps/adapter/w0;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/adapter/w0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 33
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v0, p3, Lcom/join/mgps/adapter/w0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    if-nez p1, :cond_8

    .line 35
    iget-boolean p1, p0, Lcom/join/mgps/adapter/w0;->d:Z

    if-eqz p1, :cond_8

    .line 36
    iget-object p1, p3, Lcom/join/mgps/adapter/w0$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 37
    :cond_8
    iget-object p1, p3, Lcom/join/mgps/adapter/w0$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-object p2
.end method
