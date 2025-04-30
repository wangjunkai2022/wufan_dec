.class Lcom/MApplication$e;
.super Lcom/join/mgps/ad/l;
.source "MApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MApplication;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic s:Lcom/MApplication;


# direct methods
.method constructor <init>(Lcom/MApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/MApplication$e;->s:Lcom/MApplication;

    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/ad/c;->a(Ljava/lang/String;II)V

    .line 2
    iget-object p2, p0, Lcom/MApplication$e;->s:Lcom/MApplication;

    sget-object p3, Lcom/papa/sim/statistic/Event;->Emu_PatchAd_Close:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/MApplication;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->b(Z)V

    return-void
.end method

.method public onADClick()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADClick()V

    .line 2
    iget-object v0, p0, Lcom/MApplication$e;->s:Lcom/MApplication;

    sget-object v1, Lcom/papa/sim/statistic/Event;->Emu_PatchAd_Click:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/ad/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/MApplication;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onADShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/c;->onADShow()V

    .line 2
    iget-object v0, p0, Lcom/MApplication$e;->s:Lcom/MApplication;

    sget-object v1, Lcom/papa/sim/statistic/Event;->Emu_PatchAd_Pop:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/ad/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/MApplication;->z(Ljava/lang/String;Ljava/lang/String;)V

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
