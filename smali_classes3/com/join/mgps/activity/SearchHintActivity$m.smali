.class Lcom/join/mgps/activity/SearchHintActivity$m;
.super Landroid/widget/BaseAdapter;
.source "SearchHintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SearchHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchHintActivity$m$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FavoriteBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->b:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/FavoriteBean;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/FavoriteBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FavoriteBean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    return-object p1
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FavoriteBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FavoriteBean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FavoriteBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FavoriteBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->a:Ljava/util/List;

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

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/SearchHintActivity$m$b;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/activity/SearchHintActivity$m$b;

    invoke-direct {p3, p0}, Lcom/join/mgps/activity/SearchHintActivity$m$b;-><init>(Lcom/join/mgps/activity/SearchHintActivity$m;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->b:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0570

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090687

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$m$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090acd

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$m$b;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity$m;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/FavoriteBean;

    .line 8
    iget-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$m$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoriteBean;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 9
    iget-object p3, p3, Lcom/join/mgps/activity/SearchHintActivity$m$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoriteBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p3, Lcom/join/mgps/activity/SearchHintActivity$m$a;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/activity/SearchHintActivity$m$a;-><init>(Lcom/join/mgps/activity/SearchHintActivity$m;Lcom/join/mgps/dto/FavoriteBean;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method
