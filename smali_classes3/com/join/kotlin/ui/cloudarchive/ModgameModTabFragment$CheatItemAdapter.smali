.class Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "ModgameModTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheatItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/GoldFingerBean$ContentBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;

    const p1, 0x7f0c031c

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/GoldFingerBean$ContentBean;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/GoldFingerBean$ContentBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09113e

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/GoldFingerBean$ContentBean;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;->convert(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/GoldFingerBean$ContentBean;)V

    return-void
.end method
