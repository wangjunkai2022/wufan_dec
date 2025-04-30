.class Lcom/join/mgps/activity/GameInformationActivity$b;
.super Ljava/lang/Object;
.source "GameInformationActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/GameCommentAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity;->Z0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$b;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$b;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivity;->E0(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u4f60\u5df2\u8d5e\u8fc7"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$b;->a:Lcom/join/mgps/activity/GameInformationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/join/mgps/activity/GameInformationActivity;->W0(Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method public b(Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/InformationCommentBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getComment_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setComment_id(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setUser_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/InformationCommentBean;->setUser_name(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$b;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivity;->E0(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity$b;->a:Lcom/join/mgps/activity/GameInformationActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->a(Lcom/join/mgps/dto/InformationCommentBean;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public c(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$b;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivity;->E0(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity$b;->a:Lcom/join/mgps/activity/GameInformationActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->a(Lcom/join/mgps/dto/InformationCommentBean;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$b;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivity;->e1()V

    return-void
.end method
