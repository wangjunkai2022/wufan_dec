.class public Lcom/join/mgps/fragment/t4$p;
.super Lorg/androidannotations/api/builder/d;
.source "SearchListFragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/t4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/builder/d<",
        "Lcom/join/mgps/fragment/t4$p;",
        "Lcom/join/mgps/fragment/s4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/androidannotations/api/builder/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/fragment/s4;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t4;

    invoke-direct {v0}, Lcom/join/mgps/fragment/t4;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/androidannotations/api/builder/d;->args:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public b(I)Lcom/join/mgps/fragment/t4$p;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/d;->args:Landroid/os/Bundle;

    const-string v1, "currentTab"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t4$p;->a()Lcom/join/mgps/fragment/s4;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/join/mgps/fragment/t4$p;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/d;->args:Landroid/os/Bundle;

    const-string v1, "game_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/join/mgps/fragment/t4$p;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/d;->args:Landroid/os/Bundle;

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
