.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$1;
.super Lf/d;
.source "LuckDrawAddressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->onClickAddressSelecter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$1;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    invoke-direct {p0}, Lf/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onCitySelect(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$1;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->address1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCitySelect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$1;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->address1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3001"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
