.class Lcom/join/mgps/activity/PapaMainV3Fragment$b;
.super Ljava/lang/Object;
.source "PapaMainV3Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PapaMainV3Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PapaMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/activity/PapaMainV3Fragment;->W0:Z

    .line 2
    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->c0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    iget-object v0, v0, Lcom/join/mgps/activity/PapaMainV3Fragment;->x:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    iget-object v0, v0, Lcom/join/mgps/activity/PapaMainV3Fragment;->x:Lcom/join/mgps/pref/PrefDef_;

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    iget-object v2, v0, Lcom/join/mgps/activity/PapaMainV3Fragment;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastCompletelyVisiblePosition()I

    move-result v2

    invoke-static {v0, v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->w0(Lcom/join/mgps/activity/PapaMainV3Fragment;I)I

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->d0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->v0(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    move-result v2

    if-gt v0, v2, :cond_f

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->d0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->isHasExposure()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    .line 10
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    move-result v3

    const/4 v4, 0x4

    const-string v5, "206"

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 11
    :pswitch_1
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->k0(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->j0(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->l0(Lcom/join/mgps/activity/PapaMainV3Fragment;I)V

    goto/16 :goto_8

    .line 13
    :pswitch_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_e

    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 15
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v4, :cond_4

    .line 16
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v8, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e0(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "203"

    invoke-static {v5, v9, v7, v8}, Lcom/join/mgps/activity/PapaMainV3Fragment;->f0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    sget-object v7, Lcom/psk/eventmodule/Event;->exposure:Lcom/psk/eventmodule/Event;

    invoke-static {v5, v7, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->h0(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/psk/eventmodule/Event;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    goto :goto_1

    .line 18
    :pswitch_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_e

    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v4, :cond_5

    .line 21
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v8, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e0(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "201"

    invoke-static {v5, v9, v7, v8}, Lcom/join/mgps/activity/PapaMainV3Fragment;->f0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    sget-object v7, Lcom/psk/eventmodule/Event;->exposure:Lcom/psk/eventmodule/Event;

    invoke-static {v5, v7, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->h0(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/psk/eventmodule/Event;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    goto :goto_2

    .line 23
    :pswitch_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 24
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v8, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e0(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v7, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->f0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 25
    :pswitch_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_e

    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e

    const/4 v7, 0x0

    .line 27
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    if-lt v7, v4, :cond_6

    goto :goto_4

    .line 28
    :cond_6
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v8, :cond_7

    .line 29
    iget-object v9, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-virtual {v8}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v11, v8}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e0(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v5, v10, v11}, Lcom/join/mgps/activity/PapaMainV3Fragment;->f0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v8, v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setHasExposure(Z)V

    .line 31
    invoke-interface {v3, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 32
    :cond_8
    :goto_4
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 33
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->d0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 34
    :pswitch_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_e

    .line 35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 36
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v4, :cond_9

    .line 37
    iget-object v7, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v9, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e0(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v5, v8, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->f0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 38
    :pswitch_7
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    if-eqz v3, :cond_e

    .line 39
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 40
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v3

    const-string v5, "20501"

    invoke-static {v4, v1, v3, v5}, Lcom/join/mgps/activity/PapaMainV3Fragment;->t0(Lcom/join/mgps/activity/PapaMainV3Fragment;ILjava/util/List;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 41
    :pswitch_8
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_e

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    const/4 v5, 0x0

    .line 43
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_c

    if-lt v5, v4, :cond_a

    goto :goto_7

    .line 44
    :cond_a
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    if-eqz v7, :cond_b

    .line 45
    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-virtual {v7}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "204"

    invoke-static {v8, v11, v9, v10}, Lcom/join/mgps/activity/PapaMainV3Fragment;->f0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v7, v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->setHasExposure(Z)V

    .line 47
    invoke-interface {v3, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 48
    :cond_c
    :goto_7
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 49
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->d0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 50
    :pswitch_9
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v3, :cond_e

    .line 51
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v4

    const-string v5, "22-11-1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 52
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v7, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e0(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "20201"

    invoke-static {v4, v7, v5, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->f0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 53
    :cond_d
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v4

    const-string v5, "22-12-1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 54
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$b;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {v7, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e0(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "20202"

    invoke-static {v4, v7, v5, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->f0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_e
    :goto_8
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setHasExposure(Z)V

    :cond_f
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_10
    return-void

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
