.class Lcom/join/mgps/fragment/GmaeFormPostFragment$s;
.super Ljava/lang/Object;
.source "GmaeFormPostFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/GmaeFormPostFragment;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/GmaeFormPostFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$s;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$s;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget-object p2, p2, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItemViewType(I)I

    move-result p2

    .line 3
    sget-object p4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->GAME_ITEM:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-ne p2, p4, :cond_1

    .line 4
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$s;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget-object p2, p2, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-virtual {p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;

    .line 5
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    new-instance p3, Lcom/join/mgps/dto/ForumBean$GameInfo;

    invoke-direct {p3}, Lcom/join/mgps/dto/ForumBean$GameInfo;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setSp_tpl_two_position(I)V

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setGame_id(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 12
    invoke-static {p1, p3}, Lcom/join/mgps/Util/i0;->I0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    :cond_1
    return-void
.end method
