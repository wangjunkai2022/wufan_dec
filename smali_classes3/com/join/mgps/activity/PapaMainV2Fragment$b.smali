.class Lcom/join/mgps/activity/PapaMainV2Fragment$b;
.super Ljava/lang/Object;
.source "PapaMainV2Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PapaMainV2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PapaMainV2Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/activity/PapaMainV2Fragment;->V0:Z

    .line 2
    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->g0(Lcom/join/mgps/activity/PapaMainV2Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    iget-object v0, v0, Lcom/join/mgps/activity/PapaMainV2Fragment;->y:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    iget-object v0, v0, Lcom/join/mgps/activity/PapaMainV2Fragment;->y:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    iget-object v2, v0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/customview/XListView3;->getLastCompletelyVisiblePosition()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->i0(Lcom/join/mgps/activity/PapaMainV2Fragment;I)I

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->j0(Lcom/join/mgps/activity/PapaMainV2Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->h0(Lcom/join/mgps/activity/PapaMainV2Fragment;)I

    move-result v2

    if-gt v0, v2, :cond_f

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->j0(Lcom/join/mgps/activity/PapaMainV2Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->isHasExposure()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_9

    .line 10
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    move-result v4

    const/4 v5, 0x4

    const-string v6, "206"

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 11
    :pswitch_1
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->V(Lcom/join/mgps/activity/PapaMainV2Fragment;)I

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->U(Lcom/join/mgps/activity/PapaMainV2Fragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/join/mgps/activity/PapaMainV2Fragment;->W(Lcom/join/mgps/activity/PapaMainV2Fragment;I)V

    goto/16 :goto_8

    .line 13
    :pswitch_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_e

    .line 14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 15
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v5, :cond_4

    .line 16
    iget-object v6, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v8, v5}, Lcom/join/mgps/activity/PapaMainV2Fragment;->S(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "203"

    invoke-static {v6, v8, v7, v5}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :pswitch_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_e

    .line 18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 19
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v5, :cond_5

    .line 20
    iget-object v6, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v8, v5}, Lcom/join/mgps/activity/PapaMainV2Fragment;->S(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "201"

    invoke-static {v6, v8, v7, v5}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :pswitch_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 22
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v8, v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->S(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 23
    :pswitch_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_e

    .line 24
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e

    const/4 v7, 0x0

    .line 25
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    if-lt v7, v5, :cond_6

    goto :goto_4

    .line 26
    :cond_6
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v8, :cond_7

    .line 27
    iget-object v9, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v8}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v11, v8}, Lcom/join/mgps/activity/PapaMainV2Fragment;->S(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v6, v10, v11}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v8, v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setHasExposure(Z)V

    .line 29
    invoke-interface {v4, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 30
    :cond_8
    :goto_4
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 31
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->j0(Lcom/join/mgps/activity/PapaMainV2Fragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 32
    :pswitch_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_e

    .line 33
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 34
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v5, :cond_9

    .line 35
    iget-object v7, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v9, v5}, Lcom/join/mgps/activity/PapaMainV2Fragment;->S(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v6, v8, v5}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 36
    :pswitch_7
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    if-eqz v4, :cond_e

    .line 37
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 38
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v4

    const-string v6, "20501"

    invoke-static {v5, v1, v4, v6}, Lcom/join/mgps/activity/PapaMainV2Fragment;->f0(Lcom/join/mgps/activity/PapaMainV2Fragment;ILjava/util/List;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 39
    :pswitch_8
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_e

    .line 40
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e

    const/4 v6, 0x0

    .line 41
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    if-lt v6, v5, :cond_a

    goto :goto_7

    .line 42
    :cond_a
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    if-eqz v7, :cond_b

    .line 43
    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v7}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "204"

    invoke-static {v8, v11, v9, v10}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v7, v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->setHasExposure(Z)V

    .line 45
    invoke-interface {v4, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 46
    :cond_c
    :goto_7
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 47
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->j0(Lcom/join/mgps/activity/PapaMainV2Fragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 48
    :pswitch_9
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v4, :cond_e

    .line 49
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v5

    const-string v6, "22-11-1"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 50
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v7, v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->S(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "20201"

    invoke-static {v5, v7, v6, v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :cond_d
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v5

    const-string v6, "22-12-1"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 52
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v7, v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->S(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "20202"

    invoke-static {v5, v7, v6, v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_e
    :goto_8
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setHasExposure(Z)V

    :cond_f
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
