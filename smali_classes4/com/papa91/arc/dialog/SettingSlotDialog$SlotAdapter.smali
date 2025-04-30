.class Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SettingSlotDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlotAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 2

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;)V

    .line 2
    sget p4, Lorg/ppsspp/ppsspp/R$id;->name:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 3
    sget p4, Lorg/ppsspp/ppsspp/R$id;->cover:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    sget p4, Lorg/ppsspp/ppsspp/R$id;->date:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 5
    sget p4, Lorg/ppsspp/ppsspp/R$id;->load:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->load:Landroid/view/View;

    .line 6
    sget p4, Lorg/ppsspp/ppsspp/R$id;->save:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    .line 7
    sget p4, Lorg/ppsspp/ppsspp/R$id;->del:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/papa91/arc/bean/Slot;

    .line 11
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 14
    iget-object v0, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 15
    new-instance p4, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$1;

    invoke-direct {p4, p0, p1}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;I)V

    .line 16
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->load:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result p1

    if-nez p1, :cond_1

    .line 20
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_1
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_slot:I

    return v0
.end method
