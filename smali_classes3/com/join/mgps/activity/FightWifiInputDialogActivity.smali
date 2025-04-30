.class public Lcom/join/mgps/activity/FightWifiInputDialogActivity;
.super Lcom/BaseActivity;
.source "FightWifiInputDialogActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c016c
.end annotation


# static fields
.field public static final d:I = 0x232a


# instance fields
.field a:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method F0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FightWifiInputDialogActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    const-string v1, "IP\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, p0, v1, v2}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v1, "\\."

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "."

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/FightWifiInputDialogActivity;->c:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->fightWifiInputIP()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "ip"

    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x232a

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 11
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    const-string v1, "IP\u5730\u5740\u4e0d\u5408\u6cd5"

    invoke-virtual {v0, p0, v1, v2}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FightWifiInputDialogActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/join/mgps/activity/FightWifiInputDialogActivity;->c:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->fightWifiInputIP()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    return-void
.end method
