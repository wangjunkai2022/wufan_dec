.class Lcom/join/mgps/activity/DeveloperActivity$b;
.super Lcom/join/mgps/ad/l;
.source "DeveloperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DeveloperActivity;->L0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic s:Lcom/join/mgps/activity/DeveloperActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DeveloperActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DeveloperActivity$b;->s:Lcom/join/mgps/activity/DeveloperActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->b(Z)V

    return-void
.end method

.method public onADClick()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADClick()V

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

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/l;->h(Z)V

    return-void
.end method

.method public onVideoCached()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onVideoCached()V

    return-void
.end method
