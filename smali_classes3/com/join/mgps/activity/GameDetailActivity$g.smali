.class Lcom/join/mgps/activity/GameDetailActivity$g;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity;->f1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/GameDetailActivity$l;

.field final synthetic e:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic f:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/GameDetailActivity$l;Lcom/join/mgps/dto/GameListItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iput p2, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->a:I

    iput-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->d:Lcom/join/mgps/activity/GameDetailActivity$l;

    iput-object p6, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->e:Lcom/join/mgps/dto/GameListItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->T0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/n;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->T0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->N0:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    iget p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->a:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->T0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->w0:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity;->T0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->d:Lcom/join/mgps/activity/GameDetailActivity$l;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->T0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->e:Lcom/join/mgps/dto/GameListItemBean;

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->T0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CollectionBeanSub;->setInfo(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->e:Lcom/join/mgps/dto/GameListItemBean;

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->T0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CollectionBeanSub;->setCustomer_info(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->T0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->T0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->I0:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->u:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->I0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->I0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/activity/GameDetailActivity;

    const-string v0, "\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u8868\u60c5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameDetailActivity;->g1(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
