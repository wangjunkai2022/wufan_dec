.class public Lcom/join/mgps/activity/ModGameIndexActivity_$b0;
.super Lorg/androidannotations/api/builder/a;
.source "ModGameIndexActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ModGameIndexActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/builder/a<",
        "Lcom/join/mgps/activity/ModGameIndexActivity_$b0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/activity/ModGameIndexActivity_;

    invoke-direct {p0, p1, v0}, Lorg/androidannotations/api/builder/a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/join/mgps/activity/ModGameIndexActivity_;

    invoke-direct {p0, v0, v1}, Lorg/androidannotations/api/builder/a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;
    .locals 1

    const-string v0, "from"

    .line 1
    invoke-super {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;
    .locals 1

    const-string v0, "gameId"

    .line 1
    invoke-super {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;
    .locals 1

    const-string v0, "standGameId"

    .line 1
    invoke-super {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    return-object p1
.end method

.method public startForResult(I)Lorg/androidannotations/api/builder/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->a:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/app/Activity;

    .line 5
    iget-object v1, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lorg/androidannotations/api/builder/a;->lastOptions:Landroid/os/Bundle;

    invoke-static {v0, v1, p1, v2}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    :goto_0
    new-instance p1, Lorg/androidannotations/api/builder/f;

    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/androidannotations/api/builder/f;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
