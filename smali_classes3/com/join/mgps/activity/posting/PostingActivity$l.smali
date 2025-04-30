.class public Lcom/join/mgps/activity/posting/PostingActivity$l;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/posting/PostingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/posting/PostingActivity;->N0(Lcom/join/mgps/activity/posting/PostingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/posting/PostingActivity;->N0(Lcom/join/mgps/activity/posting/PostingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/LabelBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/posting/PostingActivity$l;->b(Landroid/text/Editable;)V

    return-void
.end method

.method b(Landroid/text/Editable;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->a:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v5, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/posting/PostingActivity;->N0(Lcom/join/mgps/activity/posting/PostingActivity;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6
    iget-object v5, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/posting/PostingActivity;->N0(Lcom/join/mgps/activity/posting/PostingActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 8
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/LabelBean;

    .line 9
    invoke-virtual {v7}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v0, v6, :cond_3

    add-int v10, v6, v9

    sub-int/2addr v10, v3

    if-ne v2, v10, :cond_3

    .line 11
    invoke-interface {p1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {v1, v8}, Lcom/join/mgps/activity/posting/PostingActivity;->P0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/posting/PostingActivity;->N0(Lcom/join/mgps/activity/posting/PostingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {v1, v8}, Lcom/join/mgps/activity/posting/PostingActivity;->W0(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-lez v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/posting/PostingActivity;->A1()V

    .line 16
    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const-string v0, "#"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "beforeTextChanged"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "charSequence="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sub-int/2addr p4, p3

    const/4 p3, -0x1

    if-ne p4, p3, :cond_0

    .line 3
    :try_start_0
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr p3, p2

    .line 5
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 6
    iget-object p4, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {p4}, Lcom/join/mgps/activity/posting/PostingActivity;->i1()I

    move-result p4

    .line 7
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-ge p2, p4, :cond_0

    .line 8
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    .line 10
    iget-object p3, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->a:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "onTextChanged"

    aput-object v2, v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    aput-object p3, v0, v1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x4

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/posting/PostingActivity;->l:Lcom/join/mgps/customview/CustomEdittext;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    .line 3
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/posting/PostingActivity;->i1()I

    move-result v1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-ge p2, v1, :cond_1

    if-lez p4, :cond_1

    add-int/2addr p4, p2

    .line 6
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    if-eqz p2, :cond_1

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity$l;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_1

    .line 11
    invoke-interface {p3, p2, p4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 12
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 13
    invoke-interface {p3, p2, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1
    sub-int/2addr v0, v1

    const/16 p1, 0x14

    if-le v0, p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->A1()V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$l;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    const-string p2, "\u6700\u5927\u8f93\u5165\u6807\u9898\u5b57\u6570\u4e0d\u80fd\u8d85\u8fc720\u4e2a\u5b57!"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
