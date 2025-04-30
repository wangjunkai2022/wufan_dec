.class Lcom/BaseActivity$c;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseActivity;


# direct methods
.method constructor <init>(Lcom/BaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseActivity$c;->a:Lcom/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/BaseActivity$c;->a:Lcom/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
