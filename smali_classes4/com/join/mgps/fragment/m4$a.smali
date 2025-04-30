.class Lcom/join/mgps/fragment/m4$a;
.super Ljava/lang/Object;
.source "RankingItemV2Fragment.java"

# interfaces
.implements Lcom/join/mgps/adapter/y4$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/m4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/m4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/m4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/m4$a;->a:Lcom/join/mgps/fragment/m4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/m4$a;->a:Lcom/join/mgps/fragment/m4;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/fragment/m4;->R(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/m4$a;->a:Lcom/join/mgps/fragment/m4;

    invoke-static {p1}, Lcom/join/mgps/fragment/m4;->N(Lcom/join/mgps/fragment/m4;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/activity/MGMainActivity;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/m4$a;->a:Lcom/join/mgps/fragment/m4;

    invoke-static {p1}, Lcom/join/mgps/fragment/m4;->N(Lcom/join/mgps/fragment/m4;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->setPapaMainFragmentLastPosition(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
