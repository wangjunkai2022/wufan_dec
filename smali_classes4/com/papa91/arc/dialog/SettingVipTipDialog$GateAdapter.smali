.class Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SettingVipTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingVipTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/GateBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;)V

    .line 2
    sget p4, Lorg/ppsspp/ppsspp/R$id;->sdv_image:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 3
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_gate:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter$ViewHolder;->tv_gate:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter$ViewHolder;

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/GateBean;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "file://"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/GateBean;->getGateMaskPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 8
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p4, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 9
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter$ViewHolder;->tv_gate:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u7b2c"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/GateBean;->getGateIndex()I

    move-result p1

    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->access$000(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5173"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_gate_tip:I

    return v0
.end method
