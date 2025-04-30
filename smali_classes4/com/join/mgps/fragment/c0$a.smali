.class Lcom/join/mgps/fragment/c0$a;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/c0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/c0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c0$a;->a:Lcom/join/mgps/fragment/c0;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/c0$a;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/fragment/c0$a;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p2

    const-string p4, "gameEnter"

    invoke-virtual {p1, p2, p4}, Lcom/papa/sim/statistic/p;->f2(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/c0$a;->a:Lcom/join/mgps/fragment/c0;

    invoke-static {p1}, Lcom/join/mgps/fragment/c0;->N(Lcom/join/mgps/fragment/c0;)Lcom/join/mgps/adapter/o;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/o;->a(I)Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p2, Lcom/join/mgps/dto/GameInfoBean;

    invoke-direct {p2}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->getGame_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->getGame_ico()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/GameInfoBean;->setGame_ico(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/c0$a;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->v4(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->c(Lcom/join/mgps/dto/GameInfoBean;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
