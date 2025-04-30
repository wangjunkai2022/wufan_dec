.class Lcom/join/mgps/activity/MGMainActivity$i0;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->afterViewsInitData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "2"

    const-string v1, "1"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/JPushIntentData;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushIntentData;->getJumpInfo()Lcom/join/mgps/dto/GameHeadAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushIntentData;->getJumpInfo()Lcom/join/mgps/dto/GameHeadAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushIntentData;->getJumpInfo()Lcom/join/mgps/dto/GameHeadAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushIntentData;->getJumpInfo()Lcom/join/mgps/dto/GameHeadAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameHeadAd$SubInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/JPushIntentData;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/JPushIntentData;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->c(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushIntentData;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->c(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/JPushIntentData;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/JPushIntentData;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_4

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->c(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushIntentData;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->c(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 16
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$i0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->hideRedPoint()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_1
    return-void
.end method
