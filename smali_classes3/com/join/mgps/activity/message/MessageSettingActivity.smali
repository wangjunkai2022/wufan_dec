.class public Lcom/join/mgps/activity/message/MessageSettingActivity;
.super Lcom/BaseFragmentActivity;
.source "MessageSettingActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0055
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/join/mgps/rpc/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method D0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->q()Z

    move-result v0

    const v1, 0x7f080630

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->a:Landroid/widget/ImageView;

    const v2, 0x7f080631

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method E0(Lcom/join/mgps/dto/AccountResultMainBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/JPushJoinDeviceResult;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->isResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->getOpenPush()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->e0(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/pref/h;->e0(Z)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->getOpenPraise()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/pref/h;->f0(Z)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->f0(Z)V

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {p1}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->getOpenReply()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/pref/h;->g0(Z)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/pref/h;->g0(Z)V

    .line 11
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/MessageSettingActivity;->D0()V

    return-void
.end method

.method F0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->e:Lcom/join/mgps/rpc/b;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->I(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/MessageSettingActivity;->E0(Lcom/join/mgps/dto/AccountResultMainBean;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/MessageSettingActivity;->D0()V

    :goto_0
    return-void
.end method

.method G0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/MessageSettingActivity;->J0(I)V

    return-void
.end method

.method H0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/MessageSettingActivity;->J0(I)V

    return-void
.end method

.method I0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/MessageSettingActivity;->J0(I)V

    return-void
.end method

.method J0(I)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uid"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v3, "token"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->q()Z

    move-result v1

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/pref/h;->s()Z

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/pref/h;->r()Z

    move-result v4

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "openPush"

    invoke-virtual {v0, v6, v5}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "openReply"

    invoke-virtual {v0, v7, v5}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "openPraise"

    invoke-virtual {v0, v5, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v8, "1"

    const-string v9, "0"

    if-ne p1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0, v6, v9}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0, v7, v9}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0, v5, v9}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v6, v8}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0, v7, v9}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0, v5, v9}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    if-nez v1, :cond_2

    .line 17
    invoke-virtual {v0, v5, v9}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v0, v7, v9}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {v0, v6, v8}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0, v7, v8}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    if-nez v1, :cond_5

    .line 21
    invoke-virtual {v0, v7, v9}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    if-eqz v4, :cond_6

    .line 22
    invoke-virtual {v0, v5, v9}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {v0, v6, v8}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v0, v5, v8}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->e:Lcom/join/mgps/rpc/b;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->m(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/message/MessageSettingActivity;->K0(Lcom/join/mgps/dto/AccountResultMainBean;I)V

    goto :goto_1

    .line 27
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/MessageSettingActivity;->D0()V

    :goto_1
    return-void
.end method

.method K0(Lcom/join/mgps/dto/AccountResultMainBean;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/JPushJoinDeviceResult;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {p1}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->isResult()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/pref/h;->q()Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->s()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->r()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/pref/h;->e0(Z)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/pref/h;->f0(Z)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/pref/h;->g0(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/join/mgps/pref/h;->e0(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/pref/h;->g0(Z)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/join/mgps/pref/h;->e0(Z)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/join/mgps/pref/h;->g0(Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    if-ne p2, p1, :cond_5

    if-eqz v1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/pref/h;->f0(Z)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/join/mgps/pref/h;->e0(Z)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/join/mgps/pref/h;->f0(Z)V

    .line 15
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/MessageSettingActivity;->F0()V

    goto :goto_1

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u8bbe\u7f6e\u5931\u8d25\uff01"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method afterview()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->d:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/message/MessageSettingActivity;->e:Lcom/join/mgps/rpc/b;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/MessageSettingActivity;->F0()V

    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
