.class Lcom/join/mgps/activity/SearchListActivity1$c;
.super Ljava/lang/Object;
.source "SearchListActivity1.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchListActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$c;->a:Lcom/join/mgps/activity/SearchListActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$c;->a:Lcom/join/mgps/activity/SearchListActivity1;

    iget-boolean p2, p1, Lcom/join/mgps/activity/SearchListActivity1;->x:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p1, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SearchListActivity1;->N0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/join/mgps/activity/SearchListActivity1;->x:Z

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$c;->a:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->a:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$c;->a:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->a:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$c;->a:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->h:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    return-void
.end method
