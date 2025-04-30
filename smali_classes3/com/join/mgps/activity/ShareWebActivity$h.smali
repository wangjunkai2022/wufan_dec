.class Lcom/join/mgps/activity/ShareWebActivity$h;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/posting/PostingActivity$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ShareWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/join/mgps/activity/ShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$h;->f:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$h;->f:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public c(Lcom/join/mgps/dto/GroupInfoBean;)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public e(I)V
    .locals 1

    const/16 v0, 0x1103

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$h;->f:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->d1(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/s1;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$h;->f:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->d1(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/s1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dialog/s1;->c()V

    :cond_1
    :goto_0
    return-void
.end method
