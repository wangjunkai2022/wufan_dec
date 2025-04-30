.class Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SettingSlotDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlotQuickAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/Slot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;)V

    .line 2
    sget p4, Lorg/ppsspp/ppsspp/R$id;->name:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 3
    sget p4, Lorg/ppsspp/ppsspp/R$id;->cover:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 4
    sget p4, Lorg/ppsspp/ppsspp/R$id;->date:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 5
    sget p4, Lorg/ppsspp/ppsspp/R$id;->load:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->load:Landroid/view/View;

    .line 6
    sget p4, Lorg/ppsspp/ppsspp/R$id;->save:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->save:Landroid/view/View;

    .line 7
    sget p4, Lorg/ppsspp/ppsspp/R$id;->del:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->del:Landroid/view/View;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;

    .line 10
    :goto_0
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->save:Landroid/view/View;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->del:Landroid/view/View;

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/papa91/arc/bean/Slot;

    .line 13
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getThumb()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 16
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 17
    new-instance p2, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;I)V

    .line 18
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$ViewHolder;->load:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_slot_quick:I

    return v0
.end method
