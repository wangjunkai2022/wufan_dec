.class Lcom/join/mgps/activity/arena/GameRoomListActivity$c;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y2(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->a:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnPageChangeListener onPageSelected position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc!"

    const v1, 0x7f0801c4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f0801c3

    if-nez p1, :cond_2

    .line 2
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u0:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z3(Z)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S2()V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C3()V

    goto/16 :goto_2

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x3()V

    goto/16 :goto_2

    :cond_2
    if-ne p1, v2, :cond_6

    .line 22
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r1:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    invoke-virtual {v5, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/fragment/roomlist/c;

    .line 23
    invoke-virtual {v5}, Lcom/join/mgps/fragment/roomlist/c;->U0()V

    .line 24
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v5, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z3(Z)V

    .line 25
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F1:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u0:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 27
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->a:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result v5

    if-ne v5, v2, :cond_5

    .line 30
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t0:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A0:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 32
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x0:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S2()V

    goto :goto_1

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 42
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C3()V

    goto/16 :goto_2

    .line 43
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x3()V

    goto/16 :goto_2

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z3(Z)V

    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B0:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r1:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 64
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_8
    return-void
.end method
