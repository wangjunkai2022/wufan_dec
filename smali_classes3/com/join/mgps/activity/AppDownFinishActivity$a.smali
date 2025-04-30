.class Lcom/join/mgps/activity/AppDownFinishActivity$a;
.super Landroid/database/ContentObserver;
.source "AppDownFinishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AppDownFinishActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AppDownFinishActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AppDownFinishActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$a;->a:Lcom/join/mgps/activity/AppDownFinishActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const-string v1, "navigationbar_is_min"

    const/16 v2, 0x15

    if-ge p1, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$a;->a:Lcom/join/mgps/activity/AppDownFinishActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$a;->a:Lcom/join/mgps/activity/AppDownFinishActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    :goto_0
    return-void
.end method
