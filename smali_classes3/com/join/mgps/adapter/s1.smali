.class public Lcom/join/mgps/adapter/s1;
.super Landroid/widget/BaseAdapter;
.source "GameInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/s1$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/s1;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/s1;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/s1;->c:Landroid/content/Context;

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/adapter/s1;->b:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s1;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s1;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_1

    .line 1
    iget-boolean p2, p0, Lcom/join/mgps/adapter/s1;->b:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c030e

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c030f

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    :goto_0
    new-instance p3, Lcom/join/mgps/adapter/s1$b;

    invoke-direct {p3, v0}, Lcom/join/mgps/adapter/s1$b;-><init>(Lcom/join/mgps/adapter/s1$a;)V

    const v0, 0x7f090800

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p3, v0}, Lcom/join/mgps/adapter/s1$b;->b(Lcom/join/mgps/adapter/s1$b;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091101

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/join/mgps/adapter/s1$b;->d(Lcom/join/mgps/adapter/s1$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f091170

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/join/mgps/adapter/s1$b;->f(Lcom/join/mgps/adapter/s1$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/s1$b;

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/adapter/s1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 11
    iget-boolean v0, p0, Lcom/join/mgps/adapter/s1;->b:Z

    if-eqz v0, :cond_2

    .line 12
    invoke-static {p3}, Lcom/join/mgps/adapter/s1$b;->c(Lcom/join/mgps/adapter/s1$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-static {p3}, Lcom/join/mgps/adapter/s1$b;->a(Lcom/join/mgps/adapter/s1$b;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    const v1, 0x7f08071a

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {p3}, Lcom/join/mgps/adapter/s1$b;->c(Lcom/join/mgps/adapter/s1$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static {p3}, Lcom/join/mgps/adapter/s1$b;->a(Lcom/join/mgps/adapter/s1$b;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    const v1, 0x7f0805ab

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_ico()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/s1;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0710cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 16
    :goto_2
    invoke-static {p3}, Lcom/join/mgps/adapter/s1$b;->e(Lcom/join/mgps/adapter/s1$b;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getRoom_count()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
