.class Lcom/join/mgps/adapter/s0$a;
.super Ljava/lang/Object;
.source "GamDetialGiftMoreAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/s0;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

.field final synthetic b:Lcom/join/mgps/adapter/s0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/s0;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/s0$a;->b:Lcom/join/mgps/adapter/s0;

    iput-object p2, p0, Lcom/join/mgps/adapter/s0$a;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/s0$a;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/join/mgps/adapter/s0$a;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p1, Landroid/os/Message;->what:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/s0$a;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/s0$a;->b:Lcom/join/mgps/adapter/s0;

    invoke-static {v0}, Lcom/join/mgps/adapter/s0;->a(Lcom/join/mgps/adapter/s0;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x3

    .line 7
    iput v0, p1, Landroid/os/Message;->what:I

    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/s0$a;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/s0$a;->b:Lcom/join/mgps/adapter/s0;

    invoke-static {v0}, Lcom/join/mgps/adapter/s0;->a(Lcom/join/mgps/adapter/s0;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
