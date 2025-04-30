.class public Lcom/join/mgps/adapter/l;
.super Landroid/widget/BaseAdapter;
.source "DetialFavoritesAdapter.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/l;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/l;->b:Landroid/content/Context;

    .line 4
    iput p3, p0, Lcom/join/mgps/adapter/l;->c:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l;->a:Ljava/util/List;

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
    .locals 8

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/l;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c028f

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0909eb

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09100f

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09068d

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f090acd

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0904e7

    .line 6
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090b51

    .line 7
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 8
    iget-object v6, p0, Lcom/join/mgps/adapter/l;->a:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 9
    new-instance v7, Lcom/join/mgps/adapter/l$a;

    invoke-direct {v7, p0, v6}, Lcom/join/mgps/adapter/l$a;-><init>(Lcom/join/mgps/adapter/l;Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getNick_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getBook_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u8ba2\u9605"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u6b3e"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 15
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 16
    iget-object v4, p0, Lcom/join/mgps/adapter/l;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c02a9

    invoke-virtual {v4, v5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090687

    .line 17
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v6, 0x7f0807b1

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 19
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 20
    :cond_1
    rem-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_6

    const/4 p3, 0x1

    if-eq p1, p3, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    if-eq p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const p1, 0x7f0804a0

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const p1, 0x7f08049f

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    const p1, 0x7f08049e

    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    const p1, 0x7f08049d

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_6
    const p1, 0x7f08049c

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_1
    return-object p2
.end method
