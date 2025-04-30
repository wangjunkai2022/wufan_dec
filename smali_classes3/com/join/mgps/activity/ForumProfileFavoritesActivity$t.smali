.class Lcom/join/mgps/activity/ForumProfileFavoritesActivity$t;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$t;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$t;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItemViewType(I)I

    move-result p1

    .line 3
    sget-object p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->GAME_ITEM:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$t;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$t;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K1(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
