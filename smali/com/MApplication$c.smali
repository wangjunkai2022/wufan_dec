.class Lcom/MApplication$c;
.super Landroid/content/BroadcastReceiver;
.source "MApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/MApplication;
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
    iput-object p1, p0, Lcom/MApplication$c;->a:Lcom/MApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/MApplication$c;->a:Lcom/MApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->a3(Landroid/content/Context;)V

    return-void
.end method
