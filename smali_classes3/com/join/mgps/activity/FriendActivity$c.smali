.class Lcom/join/mgps/activity/FriendActivity$c;
.super Landroid/os/AsyncTask;
.source "FriendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FriendActivity;->getFriendInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Lcom/join/mgps/dto/FriendAccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FriendActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$c;->a:Lcom/join/mgps/activity/FriendActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lcom/join/mgps/dto/FriendAccountInfo;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$c;->a:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/join/mgps/dto/FriendReqBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/FriendReqBean;-><init>()V

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendReqBean;->setUid(I)V

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v2, v3, v1, p1}, Lcom/join/mgps/rpc/impl/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/FriendAccountInfo;

    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$c;->a:Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/FriendActivity;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Lcom/join/mgps/dto/FriendAccountInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$c;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->t:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendAccountInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$c;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendAccountInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$c;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->x:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendAccountInfo;->getAccount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity$c;->a([Ljava/lang/Integer;)Lcom/join/mgps/dto/FriendAccountInfo;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendActivity$c;->b(Lcom/join/mgps/dto/FriendAccountInfo;)V

    return-void
.end method
