.class Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$e;
.super Landroid/database/ContentObserver;
.source "MyAccountMMSCodeReginFinish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$e;->a:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;

    .line 2
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$e;->a:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->getSmsFromPhone()V

    return-void
.end method
