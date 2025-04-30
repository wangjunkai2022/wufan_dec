.class Lcom/join/mgps/fragment/x2$c;
.super Landroid/widget/BaseAdapter;
.source "GameSubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/x2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/x2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/x2$c;->a:Lcom/join/mgps/fragment/x2;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2$c;->a:Lcom/join/mgps/fragment/x2;

    iget-object v0, v0, Lcom/join/mgps/fragment/x2;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2$c;->a:Lcom/join/mgps/fragment/x2;

    iget-object v0, v0, Lcom/join/mgps/fragment/x2;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/x2$c;->a:Lcom/join/mgps/fragment/x2;

    iget-object p2, p2, Lcom/join/mgps/fragment/x2;->h:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0233

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/fragment/x2$d;

    iget-object v0, p0, Lcom/join/mgps/fragment/x2$c;->a:Lcom/join/mgps/fragment/x2;

    invoke-direct {p3, v0}, Lcom/join/mgps/fragment/x2$d;-><init>(Lcom/join/mgps/fragment/x2;)V

    const v0, 0x7f090e8a

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/fragment/x2$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09117d

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/fragment/x2$d;->c:Landroid/widget/TextView;

    const v0, 0x7f091192

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/fragment/x2$d;->b:Landroid/widget/TextView;

    const v0, 0x7f090d5a

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/fragment/x2$d;->d:Landroid/widget/RelativeLayout;

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/fragment/x2$d;

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/x2$c;->a:Lcom/join/mgps/fragment/x2;

    iget-object v0, v0, Lcom/join/mgps/fragment/x2;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p3, Lcom/join/mgps/fragment/x2$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/fragment/x2$c;->a:Lcom/join/mgps/fragment/x2;

    iget-object v1, v1, Lcom/join/mgps/fragment/x2;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/fragment/x2$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f0807b1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 12
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/fragment/x2$d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/x2$c;->a:Lcom/join/mgps/fragment/x2;

    iget-object v1, v1, Lcom/join/mgps/fragment/x2;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p3, Lcom/join/mgps/fragment/x2$d;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/x2$c;->a:Lcom/join/mgps/fragment/x2;

    iget-object v2, v2, Lcom/join/mgps/fragment/x2;->o:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u6b3e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p3, p3, Lcom/join/mgps/fragment/x2$d;->d:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/join/mgps/fragment/x2$c$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/x2$c$a;-><init>(Lcom/join/mgps/fragment/x2$c;I)V

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
