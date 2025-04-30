.class Lcom/join/mgps/customview/GameTransferListItem$a;
.super Ljava/lang/Object;
.source "GameTransferListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/GameTransferListItem;->b(ILandroid/util/SparseArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/GameTransferListItem;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/GameTransferListItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->a:Lcom/join/mgps/customview/GameTransferListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->a:Lcom/join/mgps/customview/GameTransferListItem;

    iget-object p1, p1, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->a:Lcom/join/mgps/customview/GameTransferListItem;

    iget-object v0, v0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    invoke-static {}, Lcom/join/mgps/customview/GameTransferListItem;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCheckboxStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\u4f4d\u7f6e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->a:Lcom/join/mgps/customview/GameTransferListItem;

    iget v1, v1, Lcom/join/mgps/customview/GameTransferListItem;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->a:Lcom/join/mgps/customview/GameTransferListItem;

    iget-object v0, v0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GameTransferBean;->setSelectedTransfer(Z)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->a:Lcom/join/mgps/customview/GameTransferListItem;

    iget-object v0, p1, Lcom/join/mgps/customview/GameTransferListItem;->j:Landroid/util/SparseArray;

    iget v1, p1, Lcom/join/mgps/customview/GameTransferListItem;->h:I

    iget-object p1, p1, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->a:Lcom/join/mgps/customview/GameTransferListItem;

    iget-object v0, v0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method
