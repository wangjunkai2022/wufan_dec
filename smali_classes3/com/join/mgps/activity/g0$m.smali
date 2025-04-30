.class Lcom/join/mgps/activity/g0$m;
.super Ljava/lang/Object;
.source "GamedetialModleBtFragemnt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/g0;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/g0$m;->a:Lcom/join/mgps/activity/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/g0$m;->a:Lcom/join/mgps/activity/g0;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->z0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v1, p0, Lcom/join/mgps/activity/g0$m;->a:Lcom/join/mgps/activity/g0;

    iget-object v1, v1, Lcom/join/mgps/activity/g0;->z0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->uploadType2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/g0$m;->a:Lcom/join/mgps/activity/g0;

    iget-object v1, v1, Lcom/join/mgps/activity/g0;->z0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->uploadType2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/g0$m;->a:Lcom/join/mgps/activity/g0;

    iget-object v0, v0, Lcom/join/mgps/activity/g0;->z0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/UploadActivity_;->o1(Landroid/content/Context;)Lcom/join/mgps/activity/UploadActivity_$t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/UploadActivity_$t;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/UploadActivity_$t;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/g0$m;->a:Lcom/join/mgps/activity/g0;

    iget-object v0, v0, Lcom/join/mgps/activity/g0;->z0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    return-void

    .line 9
    :cond_4
    :goto_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/g0$m;->a:Lcom/join/mgps/activity/g0;

    iget-object v0, v0, Lcom/join/mgps/activity/g0;->z0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void
.end method
