.class Lcom/join/mgps/activity/n0$r$a;
.super Ljava/lang/Object;
.source "GamedetialModleFourFragemnt.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/n0$r;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/n0$r;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/n0$r;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iput p2, p0, Lcom/join/mgps/activity/n0$r$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const-class p1, Lcom/join/mgps/activity/ImagePagerActivity;

    iget-object p2, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p2, p2, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-virtual {p2}, Lcom/join/mgps/activity/n0;->j0()Z

    move-result p2

    const-string v0, "image_index"

    const-string v1, "image_urls"

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 2
    iget p2, p0, Lcom/join/mgps/activity/n0$r$a;->a:I

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p2, p2, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-virtual {p2}, Lcom/join/mgps/activity/n0;->i0()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p1, p1, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->t0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p2, p2, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p2}, Lcom/join/mgps/activity/n0;->S(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/join/mgps/activity/n0$r$a;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p2, p2, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p2}, Lcom/join/mgps/activity/n0;->S(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p2, p2, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p2}, Lcom/join/mgps/activity/n0;->S(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object p2

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 8
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object v4, v4, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    iget-object v4, v4, Lcom/join/mgps/activity/n0;->t0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-direct {p2, v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 11
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 12
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object v3, v3, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-static {v3}, Lcom/join/mgps/activity/n0;->S(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/join/mgps/activity/n0$r$a;->a:I

    if-nez v3, :cond_4

    .line 14
    new-instance p2, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    invoke-direct {p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object v0, v0, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-static {v0}, Lcom/join/mgps/activity/n0;->S(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->n(Ljava/lang/String;)V

    .line 16
    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p1, p1, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->t0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/adapter/FullScreenActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_4

    .line 18
    :cond_4
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget p1, p0, Lcom/join/mgps/activity/n0$r$a;->a:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p1, p1, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->t0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 22
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p2, p2, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-virtual {p2}, Lcom/join/mgps/activity/n0;->i0()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p1, p1, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->t0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p2, p2, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p2}, Lcom/join/mgps/activity/n0;->S(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/join/mgps/activity/n0$r$a;->a:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p2, p2, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p2}, Lcom/join/mgps/activity/n0;->S(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_4

    .line 24
    :cond_6
    iget-object p2, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p2, p2, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p2}, Lcom/join/mgps/activity/n0;->S(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object p2

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_7

    const/4 v4, 0x0

    .line 26
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 27
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 28
    :cond_7
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object v4, v4, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    iget-object v4, v4, Lcom/join/mgps/activity/n0;->t0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-direct {p2, v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 30
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 31
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 32
    :cond_8
    iget-object v3, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object v3, v3, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-static {v3}, Lcom/join/mgps/activity/n0;->S(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/join/mgps/activity/n0$r$a;->a:I

    if-nez v3, :cond_9

    .line 33
    new-instance p2, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    invoke-direct {p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object v0, v0, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    invoke-static {v0}, Lcom/join/mgps/activity/n0;->S(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->n(Ljava/lang/String;)V

    .line 35
    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p1, p1, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->t0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/adapter/FullScreenActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_4

    .line 37
    :cond_9
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget p1, p0, Lcom/join/mgps/activity/n0$r$a;->a:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/n0$r$a;->b:Lcom/join/mgps/activity/n0$r;

    iget-object p1, p1, Lcom/join/mgps/activity/n0$r;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->t0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return v2
.end method
