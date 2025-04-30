.class Lcom/join/mgps/activity/GameDetialGiftMoreActivity$f;
.super Ljava/lang/Object;
.source "GameDetialGiftMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->V0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

.field final synthetic b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$f;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$f;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$f;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->E0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$f;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$f;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->E0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$f;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
