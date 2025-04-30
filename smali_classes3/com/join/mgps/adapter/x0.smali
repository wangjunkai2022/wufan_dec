.class public Lcom/join/mgps/adapter/x0;
.super Landroid/widget/BaseAdapter;
.source "GameDetailAdapter1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/x0$b;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/x0;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/x0;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/x0;->b:Landroid/view/LayoutInflater;

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

    .line 5
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/x0;->c:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/x0;->a:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/x0;->b:Landroid/view/LayoutInflater;

    .line 9
    iput-object p3, p0, Lcom/join/mgps/adapter/x0;->c:Ljava/util/List;

    .line 10
    iput p2, p0, Lcom/join/mgps/adapter/x0;->e:I

    .line 11
    iput-boolean p4, p0, Lcom/join/mgps/adapter/x0;->d:Z

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
    iget-object v0, p0, Lcom/join/mgps/adapter/x0;->c:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x0;->c:Ljava/util/List;

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
    .locals 4

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/x0;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0c023b

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/x0$b;

    invoke-direct {p3, p0, v0}, Lcom/join/mgps/adapter/x0$b;-><init>(Lcom/join/mgps/adapter/x0;Lcom/join/mgps/adapter/x0$a;)V

    const v0, 0x7f0906f6

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/x0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906f2

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/x0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906f5

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/x0$b;->c:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/x0$b;

    .line 8
    :goto_0
    iget v0, p0, Lcom/join/mgps/adapter/x0;->e:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p3, Lcom/join/mgps/adapter/x0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/x0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/x0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/x0;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/x0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p3, Lcom/join/mgps/adapter/x0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p3, Lcom/join/mgps/adapter/x0$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/adapter/x0;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :goto_1
    if-nez p1, :cond_2

    .line 15
    iget-boolean p1, p0, Lcom/join/mgps/adapter/x0;->d:Z

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p3, Lcom/join/mgps/adapter/x0$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/adapter/x0$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p2
.end method
