.class public Lcom/join/mgps/fragment/e3;
.super Landroidx/fragment/app/Fragment;
.source "MGManageFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0470
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/adapter/v2;

.field private c:Lcom/join/mgps/dto/AccountBean;

.field d:Lcom/join/mgps/customview/XListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/rpc/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method M(Landroid/content/Intent;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.apkinstal.action.broadcast"
        }
    .end annotation

    const-string v0, "packageName"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "actionFrom"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.papa91.gba"

    const-string v3, "com.papa91.vba"

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/e3;->b:Lcom/join/mgps/adapter/v2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/v2;->e(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_4

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/e3;->b:Lcom/join/mgps/adapter/v2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/v2;->e(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method N()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e3;->Q()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountUserInfoRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;-><init>()V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setUid(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/e3;->e:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->d(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e3;->P(Lcom/join/mgps/dto/AccountBean;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v0

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_2

    .line 12
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/e3;->O(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method O(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u9a8c\u8bc1\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55."

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/e3;->b:Lcom/join/mgps/adapter/v2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/v2;->d(Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method

.method P(Lcom/join/mgps/dto/AccountBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAvatarSrc(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setPapaMoney(J)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMobile(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setGender(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setUid(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setLevel(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getExp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setExp(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getPwd_set_up()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountBean;->setPwd_set_up(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    iget-object v1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/e3;->b:Lcom/join/mgps/adapter/v2;

    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/v2;->d(Lcom/join/mgps/dto/AccountBean;)V

    :cond_0
    return-void
.end method

.method Q()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->b:Lcom/join/mgps/adapter/v2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/v2;->d(Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/e3;->e:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    .line 4
    new-instance v0, Lcom/join/mgps/adapter/v2;

    iget-object v1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/v2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/e3;->b:Lcom/join/mgps/adapter/v2;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/e3;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/v2;->d(Lcom/join/mgps/dto/AccountBean;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->d:Lcom/join/mgps/customview/XListView;

    iget-object v1, p0, Lcom/join/mgps/fragment/e3;->b:Lcom/join/mgps/adapter/v2;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    const-string v2, "com.papa91.vba"

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/e3;->a:Landroid/content/Context;

    const-string v3, "com.papa91.gba"

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/e3;->b:Lcom/join/mgps/adapter/v2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/v2;->e(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e3;->N()V

    return-void
.end method
