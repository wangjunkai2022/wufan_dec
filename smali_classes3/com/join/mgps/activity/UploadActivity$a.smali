.class Lcom/join/mgps/activity/UploadActivity$a;
.super Ljava/lang/Object;
.source "UploadActivity.java"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UploadActivity;->a1(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/UploadActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UploadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UploadActivity$a;->a:Lcom/join/mgps/activity/UploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "onFailure--------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string v1, "upload"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "upload_result"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity$a;->a:Lcom/join/mgps/activity/UploadActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "onSuccess--------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 5
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 8
    :cond_0
    sget-object p1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-string v1, "upload"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "upload_result"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity$a;->a:Lcom/join/mgps/activity/UploadActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity$a;->a:Lcom/join/mgps/activity/UploadActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/UploadActivity;->Y0()V

    :cond_1
    return-void
.end method
