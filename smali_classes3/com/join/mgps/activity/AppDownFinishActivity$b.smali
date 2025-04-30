.class Lcom/join/mgps/activity/AppDownFinishActivity$b;
.super Landroid/database/ContentObserver;
.source "AppDownFinishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AppDownFinishActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AppDownFinishActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AppDownFinishActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$b;->a:Lcom/join/mgps/activity/AppDownFinishActivity;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
