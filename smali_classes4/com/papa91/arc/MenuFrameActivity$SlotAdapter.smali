.class Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/MenuFrameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlotAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/MenuFrameActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->slots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->slots:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->slots:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;-><init>(Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    iget-object p2, p2, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_slot:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->load:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->load:Landroid/view/View;

    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$id;->save:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    .line 9
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/Slot;

    .line 12
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    instance-of v1, v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v1, :cond_1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getThumb()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 16
    iget-object v2, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 17
    :cond_1
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;-><init>(Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;Lcom/papa91/arc/bean/Slot;I)V

    .line 18
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->load:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result p1

    if-nez p1, :cond_2

    .line 22
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_2
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p2
.end method
