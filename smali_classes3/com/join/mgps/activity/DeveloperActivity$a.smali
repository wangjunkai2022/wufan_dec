.class Lcom/join/mgps/activity/DeveloperActivity$a;
.super Lcom/join/mgps/ad/m;
.source "DeveloperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DeveloperActivity;->initTTAd(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic s:Z

.field final synthetic t:Lcom/join/mgps/activity/DeveloperActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DeveloperActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DeveloperActivity$a;->t:Lcom/join/mgps/activity/DeveloperActivity;

    iput-boolean p5, p0, Lcom/join/mgps/activity/DeveloperActivity$a;->s:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/ad/c;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->b(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/DeveloperActivity$a;->t:Lcom/join/mgps/activity/DeveloperActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/DeveloperActivity;->d:Lcom/join/mgps/ad/m;

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    return-void
.end method

.method public onADShow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADShow()V

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onInitSuccess()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/DeveloperActivity$a;->s:Z

    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/m;->h(Z)V

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onVideoCached()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity$a;->t:Lcom/join/mgps/activity/DeveloperActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/DeveloperActivity;->d:Lcom/join/mgps/ad/m;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    return-void
.end method
