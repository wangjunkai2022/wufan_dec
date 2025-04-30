.class Lcom/join/mgps/activity/login/LoginInputPassActivity$SmsObserver;
.super Landroid/database/ContentObserver;
.source "LoginInputPassActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/login/LoginInputPassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$SmsObserver;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$SmsObserver;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getSmsFromPhone()V

    return-void
.end method
