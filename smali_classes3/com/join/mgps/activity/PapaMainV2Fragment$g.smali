.class Lcom/join/mgps/activity/PapaMainV2Fragment$g;
.super Ljava/lang/Object;
.source "PapaMainV2Fragment.java"

# interfaces
.implements Lo1/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaMainV2Fragment;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PapaMainV2Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$g;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$g;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->Q(Lcom/join/mgps/activity/PapaMainV2Fragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$g;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->t0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
