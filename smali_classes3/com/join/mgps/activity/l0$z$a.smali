.class Lcom/join/mgps/activity/l0$z$a;
.super Ljava/lang/Object;
.source "GamedetialModleFiveFragemnt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/l0$z;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/l0$z;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/l0$z;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iput p2, p0, Lcom/join/mgps/activity/l0$z$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    const-class p1, Lcom/join/mgps/activity/ImagePagerActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v0, v0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-virtual {v0}, Lcom/join/mgps/activity/l0;->v0()Z

    move-result v0

    const-string v1, "image_index"

    const-string v2, "image_urls"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/l0$z$a;->a:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v0, v0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-virtual {v0}, Lcom/join/mgps/activity/l0;->u0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    iget-object p1, p1, Lcom/join/mgps/activity/l0;->w0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v0, v0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->U(Lcom/join/mgps/activity/l0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/l0$z$a;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v0, v0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->U(Lcom/join/mgps/activity/l0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v0, v0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->U(Lcom/join/mgps/activity/l0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v5, v5, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    iget-object v5, v5, Lcom/join/mgps/activity/l0;->w0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-direct {v0, v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 11
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 12
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget p1, p0, Lcom/join/mgps/activity/l0$z$a;->a:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    iget-object p1, p1, Lcom/join/mgps/activity/l0;->w0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v0, v0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-virtual {v0}, Lcom/join/mgps/activity/l0;->u0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    iget-object p1, p1, Lcom/join/mgps/activity/l0;->w0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v0, v0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->U(Lcom/join/mgps/activity/l0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/l0$z$a;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v0, v0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->U(Lcom/join/mgps/activity/l0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_4

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v0, v0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->U(Lcom/join/mgps/activity/l0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v0

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v5, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v5, v5, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v5}, Lcom/join/mgps/activity/l0;->U(Lcom/join/mgps/activity/l0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v5, v5, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v5}, Lcom/join/mgps/activity/l0;->U(Lcom/join/mgps/activity/l0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 22
    iget-object v5, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v5, v5, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v5}, Lcom/join/mgps/activity/l0;->U(Lcom/join/mgps/activity/l0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v0, :cond_7

    const/4 v5, 0x0

    .line 23
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 24
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 25
    :cond_7
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object v5, v5, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    iget-object v5, v5, Lcom/join/mgps/activity/l0;->w0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-direct {v0, v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 27
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 28
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 29
    :cond_8
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    iget p1, p0, Lcom/join/mgps/activity/l0$z$a;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/l0$z$a;->b:Lcom/join/mgps/activity/l0$z;

    iget-object p1, p1, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    iget-object p1, p1, Lcom/join/mgps/activity/l0;->w0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
