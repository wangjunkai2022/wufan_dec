.class Lcom/join/mgps/activity/vipzone/GameHlistAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameHlistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field from:I

.field iconGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->iconGames:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->context:Landroid/content/Context;

    .line 4
    iput p3, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->from:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->iconGames:Ljava/util/List;

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
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c05ed

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;

    invoke-direct {p3, p0}, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;-><init>(Lcom/join/mgps/activity/vipzone/GameHlistAdapter;)V

    const v0, 0x7f090221

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09057f

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->gameName:Landroid/widget/TextView;

    const v0, 0x7f0909eb

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->main:Landroid/view/View;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->iconGames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/IconGame;

    .line 9
    iget-object v0, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/IconGame;->getGame_ico()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 10
    iget-object v0, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->gameName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/IconGame;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p3, p3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$CollHolder;->main:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;-><init>(Lcom/join/mgps/activity/vipzone/GameHlistAdapter;Lcom/join/mgps/activity/vipzone/bean/IconGame;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
