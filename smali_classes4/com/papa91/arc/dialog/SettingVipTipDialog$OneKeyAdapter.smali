.class Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SettingVipTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingVipTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OneKeyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;)V

    .line 2
    sget p4, Lorg/ppsspp/ppsspp/R$id;->name:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 3
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_desc:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 4
    sget p4, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

    .line 8
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->tv_desc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_set()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    new-instance p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;

    invoke-direct {p1, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;)V

    .line 12
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_one_key_tip:I

    return v0
.end method
