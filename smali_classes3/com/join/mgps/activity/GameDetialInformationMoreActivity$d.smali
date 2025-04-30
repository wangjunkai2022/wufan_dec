.class Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;
.super Ljava/lang/Object;
.source "GameDetialInformationMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->N0(Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameDetialStrategyTag;

.field final synthetic b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;Lcom/join/mgps/dto/GameDetialStrategyTag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->a:Lcom/join/mgps/dto/GameDetialStrategyTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->a:Lcom/join/mgps/dto/GameDetialStrategyTag;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetialStrategyTag;->getTag_id()I

    move-result v0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->H0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->E0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;I)I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->B:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/x0;->b()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;->b:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->J0()V

    return-void
.end method
