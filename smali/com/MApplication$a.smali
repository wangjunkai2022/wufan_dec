.class Lcom/MApplication$a;
.super Ljava/lang/Thread;
.source "MApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/MApplication;


# direct methods
.method constructor <init>(Lcom/MApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/MApplication$a;->a:Lcom/MApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v0, p0, Lcom/MApplication$a;->a:Lcom/MApplication;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.wufun.broadcast.action_update_user_purchase_info"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 3
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/MApplication$a;->a:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->r()V

    .line 5
    iget-object v0, p0, Lcom/MApplication$a;->a:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
